# frozen_string_literal: true

INT32_MIN = -2**31
INT32_MAX = 2**31 - 1

# @param [String] s
# @return [Integer]
def my_atoi(s)
  s = s.lstrip
  return 0 if s.empty?

  sign = 1
  if s[0] == '-'
    sign = -1
    s = s[1..]
  elsif s[0] == '+'
    s = s[1..]
  end

  digits = String.new
  s.each_char do |c|
    break unless c.match?(/\d/)

    digits << c
  end

  return 0 if digits.empty?

  value = digits.to_i * sign
  return INT32_MIN if value < INT32_MIN
  return INT32_MAX if value > INT32_MAX

  value
end
