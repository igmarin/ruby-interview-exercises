# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

def build_tree(values)
  return nil if values.nil? || values.empty?

  root = TreeNode.new(values[0])
  queue = [root]
  i = 1

  while !queue.empty? && i < values.length
    node = queue.shift

    if i < values.length && !values[i].nil?
      node.left = TreeNode.new(values[i])
      queue << node.left
    end
    i += 1

    if i < values.length && !values[i].nil?
      node.right = TreeNode.new(values[i])
      queue << node.right
    end
    i += 1
  end

  root
end

class TestSameTree < Minitest::Test
  def test_example_1
    assert is_same_tree(build_tree([1, 2, 3]), build_tree([1, 2, 3]))
  end

  def test_example_2
    refute is_same_tree(build_tree([1, 2]), build_tree([1, nil, 2]))
  end

  def test_example_3
    refute is_same_tree(build_tree([1, 2, 1]), build_tree([1, 1, 2]))
  end

  def test_both_empty
    assert is_same_tree(build_tree([]), build_tree([]))
  end

  def test_one_empty
    refute is_same_tree(build_tree([1]), build_tree([]))
  end

  def test_single_matching_nodes
    assert is_same_tree(build_tree([7]), build_tree([7]))
  end

  def test_same_shape_different_values
    refute is_same_tree(build_tree([1, 2, 3]), build_tree([1, 2, 4]))
  end
end
