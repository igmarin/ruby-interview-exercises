# frozen_string_literal: true

# @param [Array<String>] strs
# @return [Array<Array<String>>]
def group_anagrams(strs)
  strs.group_by { |s| anagram_key(s) }.values
end

# Builds a 26-element count key using a frequency hash.
#
# @param [String] s
# @return [Array<Integer>]
def anagram_key(s)
  counts = Hash.new(0)
  s.each_char { |c| counts[c] += 1 }
  ('a'..'z').map { |c| counts[c] }
end
