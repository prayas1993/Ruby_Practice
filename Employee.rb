
class Employee
	attr_reader :name

	def initialize(name = "Anonymous")
		self.name=name
    end
    
	def name=(value)
		if value == ""
			raise"name cannot be blank"
		end
        @name=value
	end
end	

 class SalariedEmployee<Employee
    
    attr_reader :salary 
    
    def initialize(name="Anonymous",salary=0.0)
    	super(name)
    	self.salary=salary
    end

    def salary=(value)
		if value < 0
			raise"salary cannot be zero or negative"
		end
		@salary=value
	end

 	def print_pay_stub
        puts "Name:#{self.name}"
		pay_for_period=(self.salary/365.0) * 30
	    pay_for_period_formatted=format("%.2f",pay_for_period)
		puts "Salary for two weeks #{pay_for_period_formatted}."
	end
end

class HourlyEmployee<Employee

    attr_reader :hourly_wage,:hours_per_week

    def initialize(name="Anonymous",hourly_wage=0.0,hours_per_week=0.0)
        super(name) 
        self.hourly_wage=hourly_wage
        self.hours_per_week=hours_per_week
    end

    def self.security_gaurd(name="Anonymous")
    	HourlyEmployee.new(name,19.25,30)
    end

    def self.cashier(name="Anonymous")
    	HourlyEmployee.new(name,12.75,25)
    end

    def self.janitor(name="Anonymous")
    	HourlyEmployee.new(name,10.50,20)
    end


    def hourly_wage=(value)
        if value < 0
        	raise "Hourly_wage cannot be less than 0."
        end
        @hourly_wage=value	
    end
    
    def hours_per_week=(value)
        @hours_per_week=value    	
    end

	def print_pay_stub
		puts "Name:#{self.name}"
		pay_for_period=(self.hourly_wage*self.hours_per_week) * 2
	    pay_for_period_formatted=format("%.2f",pay_for_period)
		puts "Salary for two weeks #{pay_for_period_formatted}."
	end
end
    
    prayas=SalariedEmployee.new("Prayas",620000)
	prayas.print_pay_stub

    andrew=HourlyEmployee.janitor()
    lisa=HourlyEmployee.cashier("Lisa")
    sabastian=HourlyEmployee.security_gaurd("Sabastian")
    tom=HourlyEmployee.security_gaurd("Tom")

    andrew.print_pay_stub
    lisa.print_pay_stub
    sabastian.print_pay_stub  

	