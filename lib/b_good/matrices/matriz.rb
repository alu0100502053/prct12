#definicion de la clase matriz
class Matriz
	
	#definicion del metodo maximo
	def maximo
		if @matriz.is_a? Array then 
			max = @matriz[0][0]
	      for i in 0...@dimension
	        for j in 0...@dimension
	          if @matriz[i][j] > max
	            max = @matriz[i][j]
	          end
	        end
	      end
	      max
	   elsif @matrix.is_a? Hash then
	   	max = @matrix[0][0]
	   	for i in @matrix.keys do
	   		for j in @matrix[i].keys do
	   			if @matrix[i][j] > max
	   				max = @matrix[i][j]
	   			end
	   		end
	   	end
	   	max
	   end
	end

	#definicion del metodo minimo
	def minimo
		if @matriz.is_a? Array then
			min = @matriz[0][0]
		   for i in 0...@dimension
		     for j in 0...@dimension
		       if @matriz[i][j] < min
		         min = @matriz[i][j]
		       end
		     end
		   end
		   min
		elsif @matrix.is_a? Hash then
	   	min = @matrix[@matrix.keys.first][@matrix[@matrix.keys.first].keys.first]
	   	for i in @matrix.keys do
	   		for j in @matrix[i].keys do
	   			if @matrix[i][j] < min && @matrix[i][j] != 0 then
	   				min = @matrix[i][j]
	   			end
	   		end
	   	end
	   	min
	   end
	end

	#definicion abstracta del metodo para la suma de matrices
	def +(other)  

   end

   #definicion abstracta del metodo para la resta de matrices
   def -(other)  

   end

   #definicion abstracta del metodo para la multiplicacion de matrices
   def *(other)  

   end

   #definicion abstracta del metodo getter con dos argumentos
	def [] (*ij)  #Recibe un numero de argumentos...
		
	end
end
