# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestLongestSubstringWithoutRepeatingCharacters < Minitest::Test
  def test_example_1
    assert_equal 3, length_of_longest_substring('abcabcbb')
  end

  def test_example_2
    assert_equal 1, length_of_longest_substring('bbbbb')
  end

  def test_example_3
    assert_equal 3, length_of_longest_substring('pwwkew')
  end

  def test_empty_string
    assert_equal 0, length_of_longest_substring('')
  end

  def test_single_character
    assert_equal 1, length_of_longest_substring('z')
  end

  def test_all_unique
    assert_equal 6, length_of_longest_substring('abcdef')
  end

  def test_with_spaces_and_symbols
    assert_equal 4, length_of_longest_substring('a b!a b')
  end

  def test_skippable_duplicate
    assert_equal 3, length_of_longest_substring('dvdf')
  end

  def test_duplicate_outside_window
    assert_equal 2, length_of_longest_substring('abba')
  end
end
