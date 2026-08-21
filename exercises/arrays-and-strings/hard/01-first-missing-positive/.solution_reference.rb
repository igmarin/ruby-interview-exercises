# frozen_string_literal: true

# @param [Array<Integer>] nums
# @return [Integer]
def first_missing_positive(nums)
  n = nums.length

  n.times do |i|
    while nums[i] >= 1 && nums[i] <= n && nums[nums[i] - 1] != nums[i]
      target = nums[i] - 1
      nums[i], nums[target] = nums[target], nums[i]
    end
  end

  n.times do |i|
    return i + 1 if nums[i] != i + 1
  end

  n + 1
end
