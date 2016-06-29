# Árboles binarios
class ArbolBinario
	attr_accesor: nodo		# nodo de la rama
	attr_reader: hijo_izq	# hijo izquierdo
	attr_reader: hijo_der	# hijo derecho

	# inicializamos el arbol
	def init(nodo,izquierdo=nil,derecho=nil)
		@nodo = nodo
		@izquierdo = izquierdo
		@derecho = derecho
	end

	def each
		#recorre el arbol
	end

# Árboles rosa
class ArbolRosa
	attr_accesor: nodo
	attr_reader: hijos

	#inicializamos el arbol
	def init(nodo,hijos)
		@nodo = nodo
		@hijos = hijos

	def each
