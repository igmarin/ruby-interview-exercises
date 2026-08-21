# frozen_string_literal: true

# @param [Array<Integer>] nums
# @return [Integer]
def remove_duplicates(nums)
  return 0 if nums.empty?

  insert_index = 1

  (1...nums.size).each do |i|
    next if nums[i] == nums[i - 1]

    nums[insert_index] = nums[i]
    insert_index += 1
  end

  insert_index
end
