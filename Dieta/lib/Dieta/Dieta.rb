class Dietaa
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
end