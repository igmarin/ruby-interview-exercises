# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestMoveZeroes < Minitest::Test
  def test_example_1
    nums = [0, 1, 0, 3, 12]
    move_zeroes(nums)
    assert_equal [1, 3, 12, 0, 0], nums
  end

  def test_example_2
    nums = [0]
    move_zeroes(nums)
    assert_equal [0], nums
  end

  def test_no_zeroes
    nums = [1, 2, 3]
    move_zeroes(nums)
    assert_equal [1, 2, 3], nums
  end

  def test_all_zeroes
    nums = [0, 0, 0]
    move_zeroes(nums)
    assert_equal [0, 0, 0], nums
  end

  def test_maintains_order
    nums = [0, 0, 1, 0, 3, 12]
    move_zeroes(nums)
    assert_equal [1, 3, 12, 0, 0, 0], nums
  end
end
