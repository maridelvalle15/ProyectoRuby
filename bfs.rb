module BFS

	def bfs
		cola = []
		cola.push(self)
		while(cola.size != 0)
			n = cola.shift
			yield n
			n.each do |hijo|
				cola.push(hijo)
			end
		end
	end


