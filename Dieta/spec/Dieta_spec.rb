require "spec_helper"
require '/home/ubuntu/workspace/p7/Dieta/lib/dieta'
require '/home/ubuntu/workspace/p7/Dieta/lib/LList'

  describe Dieta do
    before :each do
        @d1 = Dieta.new('ALMUERZO', 30,  ['Macarrones con salsa de tomate y queso parmesano', 'Escalope de ternera', 'Ensalada básica con zanahoria rallada','Mandarina', 'Pan de trigo integral'], ['1 1/2 cucharón', '1 bistec mediano', '1 guarnición', '1 grande', '1 rodaja'], [200, 100, 120, 180, 20], 785.9, 19, 34, 47)
        @d2 = Dieta.new('ALMUERZO', 30,  ['Macarrones con salsa de tomate y queso parmesano', 'Escalope de ternera', 'Ensalada básica con zanahoria rallada','Mandarina', 'Pan de trigo integral'], ['1 1/2 cucharón', '1 bistec mediano', '1 guarnición', '1 grande', '1 rodaja'], [200, 100, 120, 180, 20], 785.9, 19, 34, 47)
        @d4 = LList.new(1)
        @d5=LList.new(@d1)

    end
  end
