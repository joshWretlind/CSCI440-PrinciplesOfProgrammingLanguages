class Product
	def initialize(name)
		@name = name
		@tasks = Array.new
		
	end
	
	def addTask(text)
		@tasks << text
	end
	
	def to_s
		@tasks.each do |i|
			puts i
		end
	end
end