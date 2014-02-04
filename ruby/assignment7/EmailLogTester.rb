require 'test/unit'
require_relative 'EmailLogMain'

class EmailLogTester < Test::Unit::TestCase
	def test_size
		testCount = 0
		idTable = {}
		testCount, testTable = readFile("mail.log")
		assert_equal(61, testCount)
		assert_equal(61, testTable.size)
	end	

	def test_ids
		testCount = 0
		idTable = {}
		testCount, testTable = readFile("mail.log")
		testTable.each do |key, value| 
		puts value
		
		assert_equal(key, value.messageID)
		end
	end
end
