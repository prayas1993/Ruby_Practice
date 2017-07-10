def my_method(&my_block)
	puts "About to call the block"
	my_block.call
	puts"Block executed"
end

my_method do
	puts"Inside the block"
end

def second_method(&my_block)
	puts"About to call the block"
	my_block.call(7)
	puts"Block executed"
end

  second_method do|n|
  	puts"Inside the block"
  	puts"Table of #{n}"
  	index = 1
  	val=1 
  	while index <= 10
  		val=n*index
  		puts "#{n}*#{index}=#{val}"
  		index+=1
    end
 end

 def alisha
 	yield("Prayas")
 end

 alisha{|love| puts"Alisha loves #{love}"}