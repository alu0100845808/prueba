require "spec_helper"

  describe Dieta do
    before :each do
        @d1 = Dieta.new('ALMUERZO', 30,  ['Macarrones con salsa de tomate y queso parmesano', 'Escalope de ternera', 'Ensalada básica con zanahoria rallada','Mandarina', 'Pan de trigo integral'], ['1 1/2 cucharón', '1 bistec mediano', '1 guarnición', '1 grande', '1 rodaja'], [200, 100, 120, 180, 20], 785.9, 19, 34, 47)
        @d2 = Dieta.new('ALMUERZO', 40,  ['Macarrones con salsa de tomate y queso parmesano', 'Escalope de ternera', 'Ensalada básica con zanahoria rallada','Mandarina', 'Pan de trigo integral'], ['1 1/2 cucharón', '1 bistec mediano', '1 guarnición', '1 grande', '1 rodaja'], [200, 100, 120, 180, 20], 785.9, 19, 34, 47)
        @d4 = LList.new(1)
        @d5 = LList.new(@d1)
        @lel = Node.new(1, 1, 1)
        @EEUPM=Pgda.new('ALMUERZO', 40,  ['Macarrones con salsa de tomate y queso parmesano', 'Escalope de ternera', 'Ensalada básica con zanahoria rallada','Mandarina', 'Pan de trigo integral'], ['1 1/2 cucharón', '1 bistec mediano', '1 guarnición', '1 grande', '1 rodaja'], [200, 100, 120, 180, 20], 785.9, 19, 34, 47,'leche, huevos, pescado, carne y frutos secos')
        @TDDHAC=Pgde.new('ALMUERZO', 40,  ['Macarrones con salsa de tomate y queso parmesano', 'Escalope de ternera', 'Ensalada básica con zanahoria rallada','Mandarina', 'Pan de trigo integral'], ['1 1/2 cucharón', '1 bistec mediano', '1 guarnición', '1 grande', '1 rodaja'], [200, 100, 120, 180, 20], 785.9, 19, 34, 47,'4 a 8 años')
        @d6 = LList.new(@EEUPM)
    end
    
    describe "Node" do
      it "Node exist" do
        expect(@lel).to be_truthy
      end
    end

    describe "List_Functions" do
      it "LList exist" do
      expect(@d4).to be_truthy
      end
      
      
        it "popb numbers" do
        @d4.pushe(2)
        @d4.pushe(3)
        @d4.pushe(4)
        @d4.pushe(5)
        expect(@d4.popb).to eq(1)
        expect(@d4.popb).to eq(2)
        expect(@d4.popb).to eq(3)
        expect(@d4.popb).to eq(4)
        expect(@d4.popb).to eq(5)
      end
      
      it "pope numbers" do
        @d4.pushe(2)
        @d4.pushe(3)
        @d4.pushe(4)
        @d4.pushe(5)
        expect(@d4.pope).to eq(5)
        expect(@d4.pope).to eq(4)
        expect(@d4.pope).to eq(3)
        expect(@d4.pope).to eq(2)
        expect(@d4.pope).to eq(1)
      end
      
      it "popb and pope numbers" do
        @d4.pushe(2)
        @d4.pushe(3)
        @d4.pushe(4)
        @d4.pushe(5)
        expect(@d4.popb).to eq(1)
        expect(@d4.pope).to eq(5)
        expect(@d4.popb).to eq(2)
        expect(@d4.pope).to eq(4)
        expect(@d4.popb).to eq(3)

      end
      
      it "nil numbers" do
        expect(@d4.popb).to eq(1)
        expect(@d4.popb).to eq(nil)
      end
      
      it "popb Dieta" do
        @d5.pushb(@d2)
        expect(@d5.popb).to eq(@d2)
        expect(@d5.popb).to eq(@d1)
      end
      
      it "pope Dieta" do
        @d5.pushb(@d2)
        expect(@d5.pope).to eq(@d1)
        expect(@d5.pope).to eq(@d2)
      end
      
      it "popb and pope Dieta" do
        @d5.pushb(@d2)
        @d5.pushb(@d1)
        @d5.pushb(@d2)
        expect(@d5.popb).to eq(@d2)
        expect(@d5.pope).to eq(@d1)
        expect(@d5.popb).to eq(@d1)
        expect(@d5.pope).to eq(@d2)
      end
      
      it "Dieta nil" do
        expect(@d5.popb).to eq(@d1)
        expect(@d5.popb).to eq(nil)
      end
      it "Dieta actual & get_next" do
        @d5.pushb(@d2)
        expect(@d5.actual).to eq(@d2)
        expect(@d5.shownext).to eq(@d1)
      end
      
      describe "Herencia" do
        
      it "Por grupos de alimentos " do
         expect(@EEUPM).to be_an_instance_of(Pgda)
         expect(@EEUPM).is_a? Object
      end
      
      
      it "Por grupos de edad " do
         expect(@TDDHAC).to be_an_instance_of(Pgde)
         expect(@TDDHAC).is_a? Object
      end
      
      
      it "List herencia " do
        @d6.pushb(@TDDHAC)
        @d6.pushb(@EEUPM)
        @d6.pushb(@TDDHAC)
         expect(@d6.popb).to be_an_instance_of(Pgde)
         expect(@d6.popb).to be_an_instance_of(Pgda)
         expect(@d6.popb).is_a? Object
         expect(@d6.popb).is_a? Object
      end
    end
    
    
    
    describe "Modulo" do
        
      it ">" do
        expect(@d1 > @d2).to be_truthy
      end
      
      
      it "<" do
        expect(@d2 < @d1).to be_truthy
      end
      
      
      it "==" do
        expect(@d1==@d1).to be_truthy
      end
    end
      
      end
  end
