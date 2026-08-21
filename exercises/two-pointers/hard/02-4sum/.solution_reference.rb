# frozen_string_literal: true

# @param [Array<Integer>] nums
# @param [Integer] target
# @return [Array<Array<Integer>>]
def four_sum(nums, target)
  nums = nums.sort
  n = nums.length
  result = []

  return result if n < 4

  (0...n - 3).each do |i|
    next if i.positive? && nums[i] == nums[i - 1]

    (i + 1...n - 2).each do |j|
      next if j > i + 1 && nums[j] == nums[j - 1]

      left = j + 1
      right = n - 1
      while left < right
        sum = nums[i] + nums[j] + nums[left] + nums[right]
        if sum == target
          result << [nums[i], nums[j], nums[left], nums[right]]
          left += 1
          right -= 1
          left += 1 while left < right && nums[left] == nums[left - 1]
          right -= 1 while left < right && nums[right] == nums[right + 1]
        elsif sum < target
          left += 1
        else
          right -= 1
        end
      end
    end
  end

  result
end
