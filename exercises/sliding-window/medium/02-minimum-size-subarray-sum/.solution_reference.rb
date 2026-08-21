# frozen_string_literal: true

# @param [Integer] target
# @param [Array<Integer>] nums
# @return [Integer]
def min_sub_array_len(target, nums)
  left = 0
  sum = 0
  best = nums.length + 1

  nums.each_with_index do |num, right|
    sum += num
    while sum >= target
      length = right - left + 1
      best = length if length < best
      sum -= nums[left]
      left += 1
    end
  end

  best <= nums.length ? best : 0
end
