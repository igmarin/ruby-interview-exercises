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


class TestMaximumDepthOfBinaryTree < Minitest::Test
  def test_example
    assert_equal 3, max_depth(build_tree([3, 9, 20, nil, nil, 15, 7]))
  end

  def test_empty
    assert_equal 0, max_depth(build_tree([]))
  end

  def test_single_node
    assert_equal 1, max_depth(build_tree([1]))
  end

  def test_unbalanced
    assert_equal 2, max_depth(build_tree([1, nil, 2]))
  end
end
