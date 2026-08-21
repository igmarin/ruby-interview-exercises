# frozen_string_literal: true

require 'set'

# @param [Array<String>] words
# @return [String]
def alien_order(words)
  adj = Hash.new { |h, k| h[k] = Set.new }
  indegree = {}

  words.each do |word|
    word.each_char { |ch| indegree[ch] = 0 unless indegree.key?(ch) }
  end

  words.each_cons(2) do |first, second|
    mismatch = false
    limit = [first.length, second.length].min
    limit.times do |i|
      a = first[i]
      b = second[i]
      next if a == b

      unless adj[a].include?(b)
        adj[a] << b
        indegree[b] += 1
      end
      mismatch = true
      break
    end

    return '' if !mismatch && first.length > second.length
  end

  ready = indegree.keys.select { |ch| indegree[ch].zero? }.sort
  order = +''

  until ready.empty?
    ch = ready.shift
    order << ch
    adj[ch].each do |nxt|
      indegree[nxt] -= 1
      next unless indegree[nxt].zero?

      insert_sorted(ready, nxt)
    end
  end

  order.length == indegree.length ? order : ''
end

def insert_sorted(arr, value)
  idx = arr.bsearch_index { |x| x >= value } || arr.length
  arr.insert(idx, value)
end
