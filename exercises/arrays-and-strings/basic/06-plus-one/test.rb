# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestPlusOne < Minitest::Test
  def test_example_1
    assert_equal [1, 2, 4], plus_one([1, 2, 3])
  end

  def test_example_2
    assert_equal [4, 3, 2, 2], plus_one([4, 3, 2, 1])
  end

  def test_example_3
    assert_equal [1, 0], plus_one([9])
  end

  def test_all_nines
    assert_equal [1, 0, 0, 0], plus_one([9, 9, 9])
  end

  def test_leading_zero_after_nines
    assert_equal [1, 0, 0, 0, 0], plus_one([9, 9, 9, 9])
  end

  def test_trailing_nine
    assert_equal [1, 2, 4, 0], plus_one([1, 2, 3, 9])
  end
end
