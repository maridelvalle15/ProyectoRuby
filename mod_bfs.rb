=begin
    Laboratorio de Lenguajes de Programacion I
    Proyecto Ruby
    Mathieu De Valery 10-10193
    Marisela Del Valle 11-10267
    mod_bfs.rb
    Ultima modificacion: 30 junio 2016
=end

module BFS
	#recorrido BFS para el àrbol
	def bfs
		cola = []
		cola.push(self)
		while(cola.size != 0)
			n = cola.shift
			yield n
			n.each do |hijo|
				unless hijo==nil
					cola.push(hijo)
				end
			end
		end
	end
end