# frozen_string_literal: true

# @param [Array<Numeric>] nums
# @return [Array(Numeric, Float), nil]
def sum_and_average(nums)
  return nil if nums.empty?

  sum = nums.sum
  average = sum / nums.length.to_f
  [sum, average]
end
