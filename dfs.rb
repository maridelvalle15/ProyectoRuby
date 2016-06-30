module DFS

    # Modulo que contiene la implementación de recorridos DFS

    # Recorrido DFS llamando al bloque de nodos iterados
    # Params:
    # +block+:: bloque que entra de forma implicita

    def dfs &block
    	yield self
    	self.each do |s|
    		s.dfs(&block)
    	end
    end

    # Recorrido DFS llamando al bloque de nodos y cambiando los valores
    # Params:
    # +block+:: bloque que entra de forma implicita

    def dfs! &block
    	@n = yield self
    	self.each do |s|
    		s.dfs!(&block)
    	end
    end
end