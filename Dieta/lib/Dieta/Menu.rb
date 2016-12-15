class Menu
    attr_accessor :etiqueta , :title , :ingest , :platos, :porcentaje
    
    def initialize(etiqueta,&block)
        self.etiqueta=etiqueta
        self.title = ""
        self.ingest = []
        self.platos = []
        self.porcentaje = []
        if block_given?  
          if block.arity == 1
            yield self
          else
            instance_eval(&block)
          end
        end
    end
    
    
    def titulo(options = {})
        title << "#{options[:titulo]}"
    end
    
    def ingesta(options = {})
        ingest << "#{options[:min]}"
        ingest << "#{options[:max]}"
    end
    
    def plato(options = {})
        plat = []
        plat << "#{options[:descripcion]}"
        plat << "#{options[:porcion]}"
        plat << "#{options[:gramos]}"
        platos << plat
    end
    def porcentajes(options = {})
        porcentaje << "#{options[:vct]}"
        porcentaje << "#{options[:proteinas]}"
        porcentaje << "#{options[:grasas]}"
        porcentaje << "#{options[:hidratos]}"
    end
    
    def to_s
        output = "#{title}\n"
        output << "#{'#' * title.size}\n\n"
        output << "Entre{"
        ingest.each do |p|
            output << p + " "
         end
         output << "}\n"
         platos.each do |p|
            p.each do |x|
                output << x + " "
            end
            output << "g \n"
         end
         porcentaje.each do |p|
            output << p + " "
         end
        output
    end
    
end