# frozen_string_literal: true

# @param [String] s
# @return [Boolean]
def is_palindrome(s)
  cleaned = s.downcase.gsub(/[^a-z0-9]/, '')

  left = 0
  right = cleaned.length - 1

  while left < right
    return false unless cleaned[left] == cleaned[right]

    left += 1
    right -= 1
  end

  true
end
