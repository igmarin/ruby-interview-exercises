# frozen_string_literal: true

class LRUCache
  # @param [Integer] capacity
  def initialize(capacity)
    @capacity = capacity
    @cache = {}
  end

  # @param [Integer] key
  # @return [Integer]
  def get(key)
    return -1 unless @cache.key?(key)

    value = @cache.delete(key)
    @cache[key] = value
    value
  end

  # @param [Integer] key
  # @param [Integer] value
  # @return [void]
  def put(key, value)
    @cache.delete(key) if @cache.key?(key)
    @cache[key] = value
    @cache.shift if @cache.size > @capacity
    nil
  end
end
