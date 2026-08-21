# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestIsPalindrome < Minitest::Test
  def test_example_1
    assert is_palindrome(121)
  end

  def test_example_2
    refute is_palindrome(-121)
  end

  def test_example_3
    refute is_palindrome(10)
  end

  def test_zero
    assert is_palindrome(0)
  end

  def test_single_digit
    assert is_palindrome(7)
  end

  def test_large_palindrome
    assert is_palindrome(12_321)
  end
end
