# frozen_string_literal: true

require 'set'

# @param [String] begin_word
# @param [String] end_word
# @param [Array<String>] word_list
# @return [Integer]
def ladder_length(begin_word, end_word, word_list)
  return 1 if begin_word == end_word

  words = Set.new(word_list)
  return 0 unless words.include?(end_word)

  patterns = Hash.new { |hash, key| hash[key] = [] }
  all_words = Set.new([begin_word] + word_list)

  all_words.each do |word|
    word.length.times do |i|
      pattern = word.dup
      pattern[i] = '*'
      patterns[pattern] << word
    end
  end

  queue = [[begin_word, 1]]
  seen = Set.new([begin_word])

  until queue.empty?
    word, steps = queue.shift

    word.length.times do |i|
      pattern = word.dup
      pattern[i] = '*'

      patterns[pattern].each do |neighbor|
        next if seen.include?(neighbor)
        return steps + 1 if neighbor == end_word

        seen.add(neighbor)
        queue << [neighbor, steps + 1]
      end
    end
  end

  0
end
