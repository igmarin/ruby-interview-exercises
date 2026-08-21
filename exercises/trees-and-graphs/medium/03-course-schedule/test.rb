# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestCourseSchedule < Minitest::Test
  def test_linear
    assert can_finish(2, [[1, 0]])
  end

  def test_cycle
    refute can_finish(2, [[1, 0], [0, 1]])
  end

  def test_single
    assert can_finish(1, [])
  end

  def test_chain
    assert can_finish(3, [[1, 0], [2, 1]])
  end

  def test_self_loop
    refute can_finish(1, [[0, 0]])
  end
end
