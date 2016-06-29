def bfs
	cola = []
	cola.push(nodo)
	while(cola.size != 0)
		n = cola.shift
		n.each do |hijo|
			cola.push(hijo)
		end
	end
end