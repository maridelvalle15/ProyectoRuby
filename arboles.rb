require_relative "bfs.rb"

# Árboles binarios
class ArbolBinario
	include BFS
	attr_accessor :nodo		# nodo de la rama
	attr_reader :hijo_izq	# hijo izquierdo
	attr_reader :hijo_der	# hijo derecho

	# inicializamos el arbol
	def initialize(nodo, izquierdo=nil, derecho=nil)
		@nodo = nodo
		@izquierdo = izquierdo
		@derecho = derecho
	end

	def each 
        # Si el hijo izquiero es distinto de nil
        # lo retorna usando yield
        if (@hijo_izq != nil)
            yield @hijo_izq
        end
        # Si el hijo derecho es distinto de nil
        # lo retorna usando yield
        if (@hijo_der != nil)
            yield @hijo_der 
        end
    end
end



# Árboles rosa
class ArbolRosa
	include BFS
	attr_accessor :nodo
	attr_reader :hijos

	#inicializamos el arbol
	def initialize(nodo,*hijos)
		@nodo = nodo
		@hijos = hijos
	end

	# Procedimiento each
    # su funcion es iterar sobre los nodos,
    # ademas recibe un bloque de manera implicita

    def each &bloque
        # itera sobre todos los hijos de cada nodo
        # retorna cada hijo utilizando yield
        for elem in @hijos
        	if (elem != nil)
            	yield elem
            end
        end
    end
end

puts 'Arbol Binario'
puts 'Constructores'
f = ArbolBinario.new(7)
y = ArbolBinario.new(2,f,nil)
w = ArbolBinario.new(11,nil,nil)
z = ArbolBinario.new(10,w,nil)
x = ArbolBinario.new(5,y,z)
puts x.nodo
x.bfs