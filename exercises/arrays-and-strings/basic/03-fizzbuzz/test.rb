# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestFizzBuzz < Minitest::Test
  def test_example_1
    assert_equal %w[1 2 Fizz], fizz_buzz(3)
  end

  def test_example_2
    assert_equal %w[1 2 Fizz 4 Buzz], fizz_buzz(5)
  end

  def test_example_3
    expected = %w[1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz]
    assert_equal expected, fizz_buzz(15)
  end

  def test_single
    assert_equal ['1'], fizz_buzz(1)
  end
end
