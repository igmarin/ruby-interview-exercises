# frozen_string_literal: true

# @param [Array<Integer>] height
# @return [Integer]
def max_area(height)
  left = 0
  right = height.length - 1
  best = 0

  while left < right
    h = height[left] < height[right] ? height[left] : height[right]
    area = h * (right - left)
    best = area if area > best

    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end

  best
end
