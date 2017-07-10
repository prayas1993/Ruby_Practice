class Animal
	def greeting
		2*3
	end
end
 
class Rabbit<Animal
    def greeting
     		ans=super
     		puts ans
     	end 	
end     	

jojo=Rabbit.new
jojo.greeting
