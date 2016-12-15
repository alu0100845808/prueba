class Menu
    attr_accessor :etiqueta , :titulo , :ingesta , :platos, :porcentajes
    
    def initialize(etiqueta,&block)
        self.etiqueta=etiqueta
        self.titulo = []
        self.ingesta = []
        self.platos = []
        self.porcentajes = []
        if block_given?  
          if block.arity == 1
            yield self
          else
            instance_eval(&block)
          end
        end
    end
    
    
    def titulo(options = {})
        titulo << "#{options[:titulo]}"
    end
    
    def ingesta(options = {})
        ingesta << "#{options[:min]}"
        ingesta << "#{options[:max]}"
    end
    
    def platos(options = {})
        plato = []
        plato << "#{options[:descripcion]}"
        plato << "#{options[:porcion]}"
        plato << "#{options[:gramos]}"
        platos << plato
    end
    def porcentajes(options = {})
        porcentajes << "#{options[:vct]}"
        porcentajes << "#{options[:proteinas]}"
        porcentajes << "#{options[:grasas]}"
        porcentajes << "#{options[:hidratos]}"
    end
    
    
end