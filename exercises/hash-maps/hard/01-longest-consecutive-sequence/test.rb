# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestLongestConsecutive < Minitest::Test
  def test_example_1
    assert_equal 4, longest_consecutive([100, 4, 200, 1, 3, 2])
  end

  def test_example_2
    assert_equal 9, longest_consecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1])
  end

  def test_empty
    assert_equal 0, longest_consecutive([])
  end

  def test_duplicates
    assert_equal 3, longest_consecutive([1, 2, 0, 1])
  end

  def test_all_same
    assert_equal 1, longest_consecutive([7, 7, 7, 7])
  end

  def test_negative
    assert_equal 5, longest_consecutive([-1, -2, -3, 0, 1])
  end
end
