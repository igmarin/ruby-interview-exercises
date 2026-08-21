# frozen_string_literal: true

# @param [Integer] x
# @return [Boolean]
def is_palindrome(x)
  return false if x.negative?

  digits = x.to_s.chars
  digits == digits.reverse
end
