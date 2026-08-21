# frozen_string_literal: true

# @param [Array<Integer>] nums
# @return [Array<Array<Integer>>]
def three_sum(nums)
  result = []

  nums.sort!
  (0...nums.length - 2).each do |i|
    next if i.positive? && nums[i] == nums[i - 1]
    break if nums[i].positive?

    left = i + 1
    right = nums.length - 1

    while left < right
      sum = nums[i] + nums[left] + nums[right]

      if sum.zero?
        result << [nums[i], nums[left], nums[right]]

        left += 1
        right -= 1

        left += 1 while left < right && nums[left] == nums[left - 1]
        right -= 1 while left < right && nums[right] == nums[right + 1]
      elsif sum.negative?
        left += 1
      else
        right -= 1
      end
    end
  end

  result
end
