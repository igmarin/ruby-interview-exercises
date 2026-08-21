# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestRemoveDuplicatesFromSortedArray < Minitest::Test
  def test_example_1
    nums = [1, 1, 2]
    assert_equal 2, remove_duplicates(nums)
    assert_equal [1, 2], nums.first(2)
  end

  def test_example_2
    nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
    assert_equal 5, remove_duplicates(nums)
    assert_equal [0, 1, 2, 3, 4], nums.first(5)
  end

  def test_empty
    assert_equal 0, remove_duplicates([])
  end

  def test_single
    nums = [1]
    assert_equal 1, remove_duplicates(nums)
    assert_equal [1], nums.first(1)
  end

  def test_no_duplicates
    nums = [1, 2, 3, 4]
    assert_equal 4, remove_duplicates(nums)
    assert_equal [1, 2, 3, 4], nums.first(4)
  end

  def test_all_same
    nums = [2, 2, 2, 2]
    assert_equal 1, remove_duplicates(nums)
    assert_equal [2], nums.first(1)
  end
end
