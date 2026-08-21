# frozen_string_literal: true

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def has_path_sum(root, target_sum)
  raise NotImplementedError, 'Implement has_path_sum'
end
