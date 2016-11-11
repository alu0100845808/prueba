Node = Struct.new(:value, :next,:back)
class LList
    attr_accessor :head, :tail
    
    
    def initialize(perry)
       a=Node.new(perry,nil,nil)
       @head=a
       @tail=a
    end
    #Introduce al inicio
    def pushb(value)
        if @head==nil
            a=Node.new(value,nil,nil)
            @head=a
            @tail=@head
        else
         a=Node.new(value,@head,nil)
         @head.back=a
        @head=a
        end
        
    end
     #Introduce al final
    def pushe(value)
        if @tail==nil
            a=Node.new(value,nil,nil)
            @head=a
            @tail=@head
        else
            a=Node.new(value,nil,@tail)
            @tail.next=a
            @tail=a
        end
    end
     #saca por el principio
    def popb()
        if @head==nil
            @head=nil
            @tail=nil
            return nil
        else
            a=@head
            @head=@head.next
            return a.value
        end
        
    end
   #saca por el final
    def pope
        if @tail==nil
            @head=nil
            @tail=nil
            return nil
        else
            a=@tail
            @tail=@tail.back
            return a.value
        end
    end
    
    
    def shownext
        if @head.next==nil
            return nil
        else
            return @head.next.value
        end
    end
    
    def actual
        if @head==nil
            return nil
        else
            return @head.value
        end
    end
    
end