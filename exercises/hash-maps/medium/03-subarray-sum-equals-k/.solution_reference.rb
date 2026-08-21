# frozen_string_literal: true

# @param [Array<Integer>] nums
# @param [Integer] k
# @return [Integer]
def subarray_sum(nums, k)
  counts = Hash.new(0)
  counts[0] = 1
  sum = 0
  total = 0

  nums.each do |num|
    sum += num
    total += counts[sum - k]
    counts[sum] += 1
  end

  total
end
