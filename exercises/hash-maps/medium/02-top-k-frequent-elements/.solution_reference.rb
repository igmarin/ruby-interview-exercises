# frozen_string_literal: true

# @param [Array<Integer>] nums
# @param [Integer] k
# @return [Array<Integer>]
def top_k_frequent(nums, k)
  counts = Hash.new(0)
  nums.each { |num| counts[num] += 1 }

  buckets = Array.new(nums.length + 1) { [] }
  counts.each { |num, count| buckets[count] << num }

  buckets.reverse.flatten(1).first(k)
end
