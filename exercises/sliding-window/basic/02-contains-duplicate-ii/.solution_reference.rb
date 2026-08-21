# frozen_string_literal: true

# @param [Array<Integer>] nums
# @param [Integer] k
# @return [Boolean]
def contains_nearby_duplicate(nums, k)
  last_seen = {}

  nums.each_with_index do |num, i|
    return true if last_seen.key?(num) && i - last_seen[num] <= k

    last_seen[num] = i
  end

  false
end
