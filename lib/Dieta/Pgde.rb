require "Dieta"
class Pgde < Dieta
    attr_accessor :pgd
    def initialize(titulo,porcmenu,desc_platos,por_platos,gr_platos,vct,porcprot,porcgrasas,porchidratos,pdg)
        super(titulo,porcmenu,desc_platos,por_platos,gr_platos,vct,porcprot,porcgrasas,porchidratos)
        @pgd=pgd
    end
    
end