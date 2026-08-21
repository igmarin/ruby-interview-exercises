# frozen_string_literal: true

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end


# @param [TreeNode] root
# @return [Integer]
def max_path_sum(root)
  @max_sum = -Float::INFINITY
  max_gain(root)
  @max_sum
end

def max_gain(node)
  return 0 if node.nil?

  left_gain = [max_gain(node.left), 0].max
  right_gain = [max_gain(node.right), 0].max

  local_max = node.val + left_gain + right_gain
  @max_sum = [@max_sum, local_max].max

  node.val + [left_gain, right_gain].max
end
