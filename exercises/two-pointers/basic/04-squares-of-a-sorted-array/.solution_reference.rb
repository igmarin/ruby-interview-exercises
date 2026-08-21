# frozen_string_literal: true

# @param [Array<Integer>] nums
# @return [Array<Integer>]
def sorted_squares(nums)
  n = nums.length
  result = Array.new(n)
  left = 0
  right = n - 1
  write = n - 1

  while left <= right
    left_sq = nums[left] * nums[left]
    right_sq = nums[right] * nums[right]
    if left_sq > right_sq
      result[write] = left_sq
      left += 1
    else
      result[write] = right_sq
      right -= 1
    end
    write -= 1
  end

  result
end
