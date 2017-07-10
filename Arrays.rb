
def total(prices)
	total=0

	prices.each do |price|
		total+=price
	end
	total
end	

def refund(prices)   
    amount=0

    prices.each do |price|
    	amount-=price
    end
    amount
end    

def show_discount(prices)
    discount=0

    prices.each do |price|
    	discount=price/3
    	puts format("Your discount is %.2f",discount)
    end
end
       
    prices=[2.44 , 55 , 88.42]

   puts format("%.2f",total(prices))
   puts format("%.2f",refund(prices))
