require_relative 'product_DSL'
require 'test/unit'

class Product_DSL_Test < Test::Unit::TestCase

	def test_good_file
			load_rules("businessrules.txt")
			assert($products.length > 0)
			assert($products.length == 5)
			
	end
	
	def test_bad_file
		assert_raises(SystemExit){load_rules("badRules.txt")}
	end
	
	def test_bad_filename
		assert_raise(SystemExit){load_rules("nosuchfile.txt")}
	end
end