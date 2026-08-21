# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestContainsDuplicate < Minitest::Test
  def test_example_1
    assert_equal true, contains_duplicate([1, 2, 3, 1])
  end

  def test_example_2
    assert_equal false, contains_duplicate([1, 2, 3, 4])
  end

  def test_example_3
    assert_equal true, contains_duplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2])
  end

  def test_empty
    assert_equal false, contains_duplicate([])
  end

  def test_single
    assert_equal false, contains_duplicate([42])
  end
end
