# frozen_string_literal: true

# @param [Array<Integer>] nums
# @param [Integer] k
# @return [Float]
def find_max_average(nums, k)
  return 0.0 if nums.empty? || k > nums.size

  window_sum = nums.take(k).sum
  max_sum = window_sum

  (k...nums.size).each do |i|
    window_sum += nums[i] - nums[i - k]
    max_sum = [max_sum, window_sum].max
  end

  max_sum.to_f / k
end
