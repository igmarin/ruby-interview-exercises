# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestMyAtoi < Minitest::Test
  def test_example_1
    assert_equal 42, my_atoi('42')
  end

  def test_example_2
    assert_equal(-42, my_atoi('   -42'))
  end

  def test_example_3
    assert_equal 4193, my_atoi('4193 with words')
  end

  def test_example_4
    assert_equal 0, my_atoi('words and 987')
  end

  def test_example_5
    assert_equal(-2_147_483_648, my_atoi('-91283472332'))
  end

  def test_positive_overflow
    assert_equal 2_147_483_647, my_atoi('91283472332')
  end

  def test_plus_sign
    assert_equal 3, my_atoi('+3')
  end

  def test_only_whitespace
    assert_equal 0, my_atoi('   ')
  end

  def test_sign_only
    assert_equal 0, my_atoi('-')
  end

  def test_mixed_letters_and_digits
    assert_equal 0, my_atoi('abc')
    assert_equal(-12, my_atoi('  -0012a42'))
  end
end
