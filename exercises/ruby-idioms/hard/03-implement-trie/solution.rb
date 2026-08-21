# frozen_string_literal: true

class Trie
  def initialize
  end

  def insert(word)
    raise NotImplementedError, 'Implement insert'
  end

  def search(word)
    raise NotImplementedError, 'Implement search'
  end

  def starts_with(prefix)
    raise NotImplementedError, 'Implement starts_with'
  end
end
