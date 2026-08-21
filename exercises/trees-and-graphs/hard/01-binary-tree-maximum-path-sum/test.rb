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


class TestBinaryTreeMaximumPathSum < Minitest::Test
  def test_example_1
    assert_equal 6, max_path_sum(build_tree([1, 2, 3]))
  end

  def test_example_2
    assert_equal 42, max_path_sum(build_tree([-10, 9, 20, nil, nil, 15, 7]))
  end

  def test_negative_single
    assert_equal(-3, max_path_sum(build_tree([-3])))
  end

  def test_negative_child
    assert_equal 4, max_path_sum(build_tree([1, -2, 3]))
  end
end
