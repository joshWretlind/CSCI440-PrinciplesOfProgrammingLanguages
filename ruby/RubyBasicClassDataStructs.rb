puts "\n RubyArray Basics\n"

a = [1, 2, 3]

puts a
puts "Length #{a.length}"

words = %w[Splitting on the basis of whitespace	 test 	]

puts words
alphabet = ('A'..'z').step(2).to_a

puts alphabet
test = "test"

test.each_char do |char|
	puts char
end

hashMap = {:one   => "foobar",
           :two   => alphabet,
           :three => test }
        
hashMap.each do |key, value| 
	puts "#{key} => #{value}"
end

a = 2
b = 3

a ^= b
b ^= a
a ^= b

puts "#{a} , #{b}"
 

