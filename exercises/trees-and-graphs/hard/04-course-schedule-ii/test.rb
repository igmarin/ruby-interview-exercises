# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

def valid_topological_order?(order, num_courses, prerequisites)
  return false unless order.is_a?(Array)
  return true if num_courses.zero?
  return false unless order.length == num_courses
  return false unless order.uniq.length == num_courses
  return false unless (order - (0...num_courses).to_a).empty?

  positions = order.each_with_index.to_h
  prerequisites.all? { |course, prereq| positions[prereq] < positions[course] }
end

class TestCourseScheduleIi < Minitest::Test
  def test_linear
    assert valid_topological_order?(find_order(2, [[1, 0]]), 2, [[1, 0]])
  end

  def test_multiple_paths
    prerequisites = [[1, 0], [2, 0], [3, 1], [3, 2]]
    assert valid_topological_order?(find_order(4, prerequisites), 4, prerequisites)
  end

  def test_cycle
    assert_empty find_order(2, [[1, 0], [0, 1]])
  end

  def test_no_prerequisites
    assert valid_topological_order?(find_order(3, []), 3, [])
  end

  def test_self_loop
    assert_empty find_order(1, [[0, 0]])
  end
end
