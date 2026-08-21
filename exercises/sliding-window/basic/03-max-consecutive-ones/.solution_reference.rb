# frozen_string_literal: true

# @param [Array<Integer>] nums
# @return [Integer]
def find_max_consecutive_ones(nums)
  best = 0
  current = 0

  nums.each do |bit|
    if bit == 1
      current += 1
      best = current if current > best
    else
      current = 0
    end
  end

  best
end
