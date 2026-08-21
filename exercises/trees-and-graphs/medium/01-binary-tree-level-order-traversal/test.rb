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


class TestBinaryTreeLevelOrderTraversal < Minitest::Test
  def test_example
    assert_equal [[3], [9, 20], [15, 7]], level_order(build_tree([3, 9, 20, nil, nil, 15, 7]))
  end

  def test_single
    assert_equal [[1]], level_order(build_tree([1]))
  end

  def test_empty
    assert_equal [], level_order(build_tree([]))
  end
end
