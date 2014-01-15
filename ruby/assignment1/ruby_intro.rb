=begin
  Name: Josh Wretlind
  Assignment: Ruby Intro Assignment
  Class: CSCI 400
  Date: 01/15/14
  Tutorial: https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/18-blocks/lessons/51-new-lesson
  This is just to play around with blocks and lambda's in ruby
  Additionally, I can see how blocks are passed around to methods here.
=end

#Create some basic lambdas
add = lambda { |a, b| return a + b }
multiply = lambda { |a, b| return a * b }

#add a lambda where we add a block to the end of the call
addTwoLambdas = lambda { |a, &b| return a.call + b.call }

#Test the basic lambdas, see their results
puts add.call(2,3)
puts multiply.call(2,3)

=begin
	Call the more complex lambda

	If there is a & on the last input of a method or lambda, it means 
	that when you call the method, you can have one less argument. How
	you use that argument, is that you put all of the code that would go
	into that argument tacked on between curly braces at the end of the call
	ex: foo(a, b, &c) is called by foo(a,b) { stuff }. Then, within foo,
	you can call c or do whatever you need to with the block.
=end
puts addTwoLambdas.call Proc.new { multiply.call(2,3) } { add.call(2,3) } 



