# frozen_string_literal: true

class LRUCache
  def initialize(capacity)
    @capacity = capacity
  end

  def get(key)
    raise NotImplementedError, 'Implement get'
  end

  def put(key, value)
    raise NotImplementedError, 'Implement put'
  end
end
