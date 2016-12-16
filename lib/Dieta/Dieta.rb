class Dieta
    include Comparable
    attr_accessor :titulo,:porcmenu,:desc_platos,:por_platos,:gr_platos,:vct,:porcprot,:porcgrasas,:porchidratos
    def initialize(titulo,porcmenu,desc_platos,por_platos,gr_platos,vct,porcprot,porcgrasas,porchidratos)
        @titulo=titulo
        @porcmenu=porcmenu
        @desc_platos=desc_platos
        @por_platos=por_platos
        @gr_platos=gr_platos
        @vct=vct
        @porcprot=porcprot
        @porcgrasas=porcgrasas
        @porchidratos=porchidratos
    end
    
    def <=> (other)
        if(@gr_platos == other.gr_platos)
            @porcprot <=> other.porcprot
        else
            @gr_platos <=> other.gr_platos
        end
    end
    
end