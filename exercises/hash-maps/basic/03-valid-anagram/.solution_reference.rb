# frozen_string_literal: true

# @param [String] s
# @param [String] t
# @return [Boolean]
def is_anagram(s, t)
  return false unless s.length == t.length

  counts = Hash.new(0)
  s.each_char { |c| counts[c] += 1 }
  t.each_char do |c|
    counts[c] -= 1
    return false if counts[c].negative?
  end
  true
end
