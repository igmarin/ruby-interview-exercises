# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestValidPalindrome < Minitest::Test
  def test_example_1
    assert is_palindrome('A man, a plan, a canal: Panama')
  end

  def test_example_2
    refute is_palindrome('race a car')
  end

  def test_empty_and_whitespace_only
    assert is_palindrome('')
    assert is_palindrome('   ')
  end

  def test_single_character
    assert is_palindrome('a')
    assert is_palindrome('Z')
  end

  def test_mixed_alphanumeric
    assert is_palindrome('A1B2B1A')
    refute is_palindrome('A1B2C')
  end
end
