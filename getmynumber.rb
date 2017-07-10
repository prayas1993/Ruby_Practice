puts "Welcome to 'Get my number game'"
puts "Enter your name "

name=gets.chomp

puts "Welcome #{name}!"

target=rand(100)+1


num_guesses=0
guessed_it=false

while guessed_it==false && num_guesses<10 
  

  puts "You have got #{10-num_guesses} guesses left"

  puts "Make a guess"

  guess=gets.chomp.to_i

  if guess<target 
  	puts "Oops,Your guess was low"
  	num_guesses+=1
  elsif guess>target
  	puts "Oops,Your guess was high"
  	num_guesses+=1
  elsif guess==target
  	puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it=true				  			
  end	

end
   if guessed_it==false
   puts "Sorry,you cant guess my number within 10 chances"
   end 