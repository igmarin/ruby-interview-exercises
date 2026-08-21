# frozen_string_literal: true

# @param [Array<Integer>] nums
# @return [Array<Integer>]
def product_except_self(nums)
  n = nums.length
  answer = Array.new(n, 1)

  left = 1
  n.times do |i|
    answer[i] = left
    left *= nums[i]
  end

  right = 1
  (n - 1).downto(0) do |i|
    answer[i] *= right
    right *= nums[i]
  end

  answer
end
