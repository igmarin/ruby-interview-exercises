# frozen_string_literal: true

require 'set'

# @param [Array<Integer>] nums
# @return [Integer]
def longest_consecutive(nums)
  set = Set.new(nums)
  longest = 0

  set.each do |num|
    next if set.include?(num - 1)

    current = num
    length = 0
    while set.include?(current)
      length += 1
      current += 1
    end

    longest = [longest, length].max
  end

  longest
end
