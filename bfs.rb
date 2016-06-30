module BFS

	def bfs
		cola = []
		cola.push(self)
		while(cola.size != 0)
			n = cola.shift
			yield n
			n.each do |hijo|
				if not(hijo.nil)
					cola.push(hijo)
				end
			end
		end
	end
end