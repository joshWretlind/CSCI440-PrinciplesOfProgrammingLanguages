class Input_Framework
	def initialize(value)
		@object = value
		
		p "Please input data for your #{@object.class}"
		@object.instance_variables.each do | instanceVariable |
			p "Please input data for your #{instanceVariable} : "
			input = gets.chomp 
			@object.instance_variable_set instanceVariable input
		end
	end
	
	def to_s
		@objects.methods.each do | methodToCall |
			if methodToCall.to_s === "to_s"
				@object.send methodToCall
			end
		end
	end
end

class Cat
	def initialize(name, age, color)
		@name = name
		@age = age
		@color = color
	end
	
	def to_s
		p "#{@name} #{@age} #{color}"
	end
end

cat = Cat.new("foobar", 29, "red")
framework = Input_Framework.new(cat)

p framework
