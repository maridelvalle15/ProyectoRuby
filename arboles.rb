# Árboles binarios
class ArbolBinario
	attr_accesor :nodo		# nodo de la rama
	attr_reader :hijo_izq	# hijo izquierdo
	attr_reader :hijo_der	# hijo derecho

	# inicializamos el arbol
	def init(nodo, izquierdo=nil, derecho=nil)
		@nodo = nodo
		@izquierdo = izquierdo
		@derecho = derecho
	end

	  def each &bloque
        # Si el hijo izquiero es distinto de nil
        # lo retorna usando yield
        if l
            yield l
        end
        # Si el hijo derecho es distinto de nil
        # lo retorna usando yield
        if r
            yield r 
        end
    end
end



# Árboles rosa
class ArbolRosa
	attr_accesor :nodo
	attr_reader :hijos

	#inicializamos el arbol
	def init(nodo,*hijos)
		@nodo = nodo
		@hijos = hijos

	 # Procedimiento each
    # su funcion es iterar sobre los nodos,
    # ademas recibe un bloque de manera implicita

    def each &bloque
        # retorna el nodo
        yield n
        # itera sobre todos los hijos de cada nodo
        # retorna cada hijo utilizando yield
        for i in ss
            yield i
        end
    end
end
