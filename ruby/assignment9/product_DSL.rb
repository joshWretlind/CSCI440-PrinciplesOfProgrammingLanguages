=begin
			Authors: Travis Boyd and Josh Wretlind
			Ruby Version: 2.0.0
=end
		require_relative 'product'
		$products = Hash.new
		$currentProduct = ""
		filename = ""

		def get_products
			$products.clone
		end

		
		def set_filename (text)
			filename = text
		end

def product(text)
		if $products.has_key?(text)
			$currentProduct = text
		else
			newProduct = Product.new(text)
			$products.store(text, newProduct)
			$currentProduct = text
		end
	end
	
	def packing_slip(text)
		message = "---Packing slip for #{text}"
		$products[$currentProduct].addTask(message)
	end
	
	def activate
		message = "---Activating membership"
		$products[$currentProduct].addTask(message)
	end
	
	def pay(text)
		message = "---Sending payment to #{text}"
		$products[$currentProduct].addTask(message)
	end
	
	def warrantee
		message = "---Certifying warrantee"
		$products[$currentProduct].addTask(message)
	end
	
	def email(text)
		message = "---Sending email to #{text}"
		$products[$currentProduct].addTask(message)
	end
	
	def notify(text)
		message = "---Notifying #{text}"
		$products[$currentProduct].addTask(message)
	end
	
	def discount(text)
		message = "---Awarding discount on #{text}"
		$products[$currentProduct].addTask(message)
	end
	
	def freebie(text)
		message = "---including free #{text}"
		$products[$currentProduct].addTask(message)
	end



	def load_rules(filename)
		begin
			load filename
		rescue NameError => e
			puts "Bad file input command! Error was: #{e.message}"
			abort
		rescue LoadError => f
			puts "No such file found!"
			abort
		end
	end
	

	
	def readLoop
		inputString = ""
		while(true)
			print "Enter a product or type 'quit' to quit:"
			inputString = gets.chomp
			if inputString == "quit" 
				return
			end
			if  $products.has_key? inputString
				puts "Processing order for a #{inputString}"
				a = $products.fetch(inputString)
				a.to_s
			else
				puts "Invalid product type!"
			end
		end
	end
	
	if __FILE__==$0
		puts "Please enter the rules file"
		filename = gets.chomp
		load_rules(filename)
		
		readLoop
	end