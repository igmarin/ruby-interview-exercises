# frozen_string_literal: true

# @param [String] text
# @return [Hash{String => Integer}]
def word_frequency(text)
  words = text.downcase.scan(/[a-z]+/)

  # Ruby 2.7+ one-liner: words.tally
  words.each_with_object(Hash.new(0)) do |word, counts|
    counts[word] += 1
  end
end
