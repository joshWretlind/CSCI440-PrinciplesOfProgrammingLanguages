=begin
	Author: Josh Wretlind
	Class: CSCI 400 - Principles of Programming languages
	Date: 01/29/14
	
	This creates a guess-the-scambled-word type game
=end

class Words
	def initialize()
		@wordArray = IO.readlines('words.txt')
	end
	
	def [](whichWordToGet)
		@wordArray[whichWordToGet]
	end
end

words = Words.new
input = "y"
guess = " "
i = 0

while(input.downcase == "y")
	puts "Scrambled word: #{words[i].split("").shuffle.join}"
	puts "What's the word?"
	guess = gets
	
	if guess == words[i]
		puts "That's correct!"
	else 
		puts "Nice try, but wrong"
	end
	puts "would you like to continue?"
	input = gets.chomp
	i += 1
	if i >= words.instance_variable_get(:@wordArray).length then
		puts "You've ran out of words in the file, better luck next time!"
		input = "n"
	end
end
