# frozen_string_literal: true

# @param [Array<Integer>] nums
# @return [nil]
def move_zeroes(nums)
  insert_pos = 0

  nums.each do |num|
    next if num.zero?

    nums[insert_pos] = num
    insert_pos += 1
  end

  (insert_pos...nums.size).each do |i|
    nums[i] = 0
  end

  nil
end
