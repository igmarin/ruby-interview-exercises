# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestEvalRPN < Minitest::Test
  def test_example_1
    assert_equal 9, eval_rpn(%w[2 1 + 3 *])
  end

  def test_example_2
    assert_equal 6, eval_rpn(%w[4 13 5 / +])
  end

  def test_example_3
    assert_equal 22, eval_rpn(%w[10 6 9 3 + -11 * / * 17 + 5 +])
  end

  def test_negative_division
    assert_equal(-1, eval_rpn(%w[-4 3 /]))
    assert_equal 0, eval_rpn(%w[10 -132 /])
  end

  def test_invalid_token
    assert_raises(ArgumentError) { eval_rpn(%w[2 a +]) }
  end

  def test_insufficient_operands
    assert_raises(ArgumentError) { eval_rpn(%w[2 +]) }
  end

  def test_excess_operands
    assert_raises(ArgumentError) { eval_rpn(%w[2 3]) }
  end
end
