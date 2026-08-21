# frozen_string_literal: true

# @param [Array<Integer>] numbers
# @param [Integer] target
# @return [Array<Integer>]
def two_sum(numbers, target)
  left = 0
  right = numbers.length - 1

  while left < right
    current_sum = numbers[left] + numbers[right]

    if current_sum == target
      return [left + 1, right + 1]
    elsif current_sum < target
      left += 1
    else
      right -= 1
    end
  end

  []
end
