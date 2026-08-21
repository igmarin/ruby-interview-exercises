# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestMergeSortedArray < Minitest::Test
  def test_example_1
    nums1 = [1, 2, 3, 0, 0, 0]
    assert_nil merge(nums1, 3, [2, 5, 6], 3)
    assert_equal [1, 2, 2, 3, 5, 6], nums1
  end

  def test_example_2
    nums1 = [1]
    assert_nil merge(nums1, 1, [], 0)
    assert_equal [1], nums1
  end

  def test_example_3
    nums1 = [0]
    assert_nil merge(nums1, 0, [1], 1)
    assert_equal [1], nums1
  end

  def test_nums2_fits_before_nums1
    nums1 = [4, 5, 6, 0, 0, 0]
    assert_nil merge(nums1, 3, [1, 2, 3], 3)
    assert_equal [1, 2, 3, 4, 5, 6], nums1
  end

  def test_nums2_fits_after_nums1
    nums1 = [1, 2, 3, 0, 0, 0]
    assert_nil merge(nums1, 3, [4, 5, 6], 3)
    assert_equal [1, 2, 3, 4, 5, 6], nums1
  end

  def test_interleaved_values
    nums1 = [1, 2, 7, 0, 0, 0]
    assert_nil merge(nums1, 3, [3, 5, 6], 3)
    assert_equal [1, 2, 3, 5, 6, 7], nums1
  end
end
