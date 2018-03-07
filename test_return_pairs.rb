require "minitest/autorun"
require_relative "return_pairs.rb"

class Addition_test < Minitest::Test

	def test_boolean
		assert_equal(true, true)
	end

	def test_for_returned_array
		pairs = return_pairs(["Fred", "Wilma"])
		assert_equal(Array, pairs.class)
	end

	def test_for_returning_one_pair_when_sent_two_names
		pairs = return_pairs(["Betty", "Boop"])
		assert_equal(1, pairs.length)
	end

	def test_for_returning_two_pairs_in_nested_arrays_when_sending_four_names
		pairs = return_pairs(["Jack", "Jill", "Bob", "Builder"])
		assert_equal(2, pairs[0].length)
		assert_equal(2, pairs[1].length)
	end

	def test_for_randomness
		random = shuffle([*?a..?z])
		if random != ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
			condition = true
		end
		assert_equal(true, condition)
	end

	def test_for_group_of_three_when_odd_number_of_names_sent
		pairs = return_pairs(["dasher", "dancer", "cupid", "donder", "blitzen"])
		check_group = pairs.last
		assert_equal(3, check_group.length)
	end

	def test_for_group_of_three_when_big_odd_number_of_names_sent
		pairs = return_pairs(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y"])
		check_group = pairs.last
		assert_equal(3, check_group.length)
	end

	def test_for_group_of_three_when_three_names_sent
		pairs = return_pairs(["huey", "dooey", "looey"])
		check_group = pairs.last
		assert_equal(3, check_group.length)
	end	


end
