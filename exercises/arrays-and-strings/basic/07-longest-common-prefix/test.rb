# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestLongestCommonPrefix < Minitest::Test
  def test_example_1
    assert_equal 'fl', longest_common_prefix(%w[flower flow flight])
  end

  def test_example_2
    assert_equal '', longest_common_prefix(%w[dog racecar car])
  end

  def test_single_string
    assert_equal 'alone', longest_common_prefix(['alone'])
  end

  def test_identical_strings
    assert_equal 'same', longest_common_prefix(%w[same same same])
  end

  def test_empty_string_in_list
    assert_equal '', longest_common_prefix(['abc', '', 'ab'])
  end

  def test_one_character_prefix
    assert_equal 'a', longest_common_prefix(%w[ab ac ad])
  end

  def test_full_shortest_string_is_prefix
    assert_equal 'flow', longest_common_prefix(%w[flower flow flowing])
  end
end
