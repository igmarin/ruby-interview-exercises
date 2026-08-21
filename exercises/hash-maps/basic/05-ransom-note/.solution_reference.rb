# frozen_string_literal: true

# @param [String] ransom_note
# @param [String] magazine
# @return [Boolean]
def can_construct(ransom_note, magazine)
  counts = Hash.new(0)
  magazine.each_char { |ch| counts[ch] += 1 }

  ransom_note.each_char do |ch|
    return false if counts[ch].zero?

    counts[ch] -= 1
  end

  true
end
