=begin
    Laboratorio de Lenguajes de Programacion I
    Proyecto Ruby
    Mathieu De Valery 10-10193
    Marisela Del Valle 11-10267
    trees.rb
    Ultima modificacion: 30 junio 2016
=end

require_relative "mod_bfs.rb"
require_relative "mod_fold.rb"
require_relative "mod_bfs.rb"

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
        # recorremos los hijos en modo BFS
        if not(@izquierdo==nil)
            yield @izquierdo
        end
        if not(@derecho==nil)
            yield @derecho
        end
    end
end



# Árboles rosa
class ArbolRosa
	include BFS
    include DFS
	attr_accessor :nodo
	attr_reader :hijos

	#inicializamos el arbol
	def initialize(nodo,hijos = [])
		@nodo = nodo
		@hijos = hijos
	end

	# Procedimiento each
    # su funcion es iterar sobre los nodos,
    # ademas recibe un bloque de manera implicita

    def each 
        # itera sobre todos los hijos de cada nodo
        # retorna cada hijo utilizando yield
        @hijos.each do |elem|
            if not(elem==nil)
                yield elem
            end
        end
    end
end

=begin
puts 'Arbol Binario'
puts 'Constructores'
#f = ArbolBinario.new(7)
#y = ArbolBinario.new(2,f,nil)
#w = ArbolBinario.new(11,nil,nil)
#z = ArbolBinario.new(10,w,nil)
#x = ArbolBinario.new(5,y,z)
arbolNieto = ArbolRosa.new(3)
arbolhijo1 = ArbolRosa.new(1,[arbolNieto])
arbolhijo2 = ArbolRosa.new(2)
arbolPapa = ArbolRosa.new(0,[arbolhijo1,arbolhijo2])
arbolPapa.bfs { |x| puts x.nodo }
#arbol1.bfs { |n| puts "binary -> #{n.node}"}
arbolPapa.dfs { |n| puts x.nodo}
#arbolPapa.recoger
=end