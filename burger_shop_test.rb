require_relative "burger_shop_program.rb"
require "minitest/autorun"

class TestMath < Minitest::Test  #The word Math is the name of your project
	def test_assert_that_1_equals_1
		assert_equal(1,1)
	end
	def test_totals
		assert_equal(0,total_cost(0,0,0,0))
		assert_equal(2.69,total_cost(1,0,0,0))
		assert_equal(2.89,total_cost(0,1,0,0))
		assert_equal(1.89,total_cost(0,0,1,0))
		assert_equal(2.25,total_cost(0,0,0,1))
		assert_equal(5.58,total_cost(1,1,0,0))
		assert_equal(7.47,total_cost(1,1,1,0))
		assert_equal(9.72,total_cost(1,1,1,1).round(2))
	
	end	
end