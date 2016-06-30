=begin
    Laboratorio de Lenguajes de Programacion I
    Proyecto Ruby
    Mathieu De Valery 10-10193
    Marisela Del Valle 11-10267
    mod_fold.rb
    Ultima modificacion: 30 junio 2016
=end
module DFS
    # recorrido DFS para el arbol
    def dfs
    	self.each do |s|
    		s.dfs
    	end
    end

    # recorrido DFS para el arbol, recibiendo un bloque de manera implicita y llamandolo con cada nodo
    def fold(baseValue,&block)
        puts "Fold"
        baseValue = yield(baseValue,self)
        self.each do |hijo|
            resultado = hijo.fold(baseValue,&block)
            baseValue = resultado
        end
        baseValue
    end

    # Recorrido DFS llamando al bloque de nodos y cambiando los valores
    # Params:
    # +block+:: bloque que entra de forma implicita

end   