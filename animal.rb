class Animal

   attr_reader :name,:age


    def name=(name)
        if name==""
    	 raise"name cannot be blank"
        end
    	@name=name
    end

    def age=(age)
    	if age<0
    	 raise "Age cannot be negative"
    	end 
   		@age=age
    end

	def talk 
		puts "#{@name} Bark"
	end
	

	def move destination
        puts "#{@name} Running to the #{destination}"
    end

    def report_age
		puts "#{@name} is #{@age} years old"
	end
		
end    

class Bird<Animal	
end


class Cat<Animal 
end 

class Dog<Animal
end


 bird = Bird.new

dog = Dog.new
cat = Cat.new
dog.name="Rusty"
dog.age=3
bird.name="Pyari"
cat.name="pussy"
bird.age=1
cat.age=2
bird.move("tree")
dog.talk
bird.talk
cat.move("house")
dog.report_age
puts dog.name