# frozen_string_literal: true

# @param [Array<Integer>] nums
# @param [Integer] k
# @return [Array<Integer>]
def max_sliding_window(nums, k)
  deque = []
  result = []

  nums.each_with_index do |num, i|
    # Discard indices that have fallen out of the current window.
    deque.shift while !deque.empty? && deque.first <= i - k

    # Maintain decreasing values: the new element removes smaller elements
    # from the back, because they can never become a future maximum.
    deque.pop while !deque.empty? && nums[deque.last] <= num

    deque << i
    result << nums[deque.first] if i >= k - 1
  end

  result
end
