# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestMergeKSortedLists < Minitest::Test
  def test_example_1
    assert_equal [1, 1, 2, 3, 4, 4, 5, 6],
                 merge_k_lists([[1, 4, 5], [1, 3, 4], [2, 6]])
  end

  def test_empty_lists
    assert_equal [], merge_k_lists([])
  end

  def test_some_empty_lists
    assert_equal [1, 2, 3], merge_k_lists([[1, 3], [], [2]])
  end

  def test_single_list
    assert_equal [1, 2, 3], merge_k_lists([[1, 2, 3]])
  end

  def test_negative_numbers
    assert_equal [-5, -1, 0, 1, 2],
                 merge_k_lists([[-1, 0, 2], [-5, 1]])
  end

  def test_duplicates
    assert_equal [1, 1, 2, 2, 3, 3],
                 merge_k_lists([[1, 2, 3], [1, 2, 3]])
  end
end
