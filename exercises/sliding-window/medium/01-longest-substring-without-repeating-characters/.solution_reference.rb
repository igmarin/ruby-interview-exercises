# frozen_string_literal: true

# @param [String] s
# @return [Integer]
def length_of_longest_substring(s)
  last_seen = {}
  left = 0
  max_len = 0

  s.chars.each_with_index do |char, right|
    if last_seen.key?(char) && last_seen[char] >= left
      left = last_seen[char] + 1
    end

    last_seen[char] = right
    max_len = [max_len, right - left + 1].max
  end

  max_len
end
