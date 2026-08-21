# frozen_string_literal: true

# @param [String] s
# @param [String] t
# @return [String]
def min_window(s, t)
  return '' if t.empty? || s.length < t.length

  need = Hash.new(0)
  t.each_char { |ch| need[ch] += 1 }
  missing = t.length
  best_start = 0
  best_len = s.length + 1
  left = 0

  s.each_char.with_index do |ch, right|
    if need[ch] > 0
      missing -= 1
    end
    need[ch] -= 1

    while missing.zero?
      length = right - left + 1
      if length < best_len
        best_len = length
        best_start = left
      end

      left_ch = s[left]
      need[left_ch] += 1
      missing += 1 if need[left_ch] > 0
      left += 1
    end
  end

  best_len > s.length ? '' : s[best_start, best_len]
end
