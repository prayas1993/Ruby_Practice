dial_book = {

"newyork" => "212",

"newbrunswick" => "732",

"edison" => "908",

"plainsboro" => "609",

"sanfrancisco" => "301"

}

def display_city_names dial_book
	dial_book.each_pair { |k,v| puts k  }
end	

def find_city_code(dial_book,k)
    dial_book[k]
end

loop do
	puts"do you want to look for a city code with city name(Y/N)"
    ans=gets.chomp 
    if ans!='Y'
    	break
    end
    
    display_city_names(dial_book)

    puts"Enter your choice"
    prompt=gets.chomp

    if dial_book.include?(prompt)
        puts"The city code for #{prompt} is #{find_city_code(dial_book,prompt)}"	
    else
    	puts "wrong choice"
    end	

end