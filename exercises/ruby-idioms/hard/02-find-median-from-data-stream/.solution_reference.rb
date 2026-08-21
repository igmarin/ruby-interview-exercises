# frozen_string_literal: true

class MedianFinder
  def initialize
    @lower = []  # max-heap: largest of the smaller half is at index 0
    @higher = [] # min-heap: smallest of the larger half is at index 0
  end

  # @param [Integer] num
  # @return [void]
  def add_num(num)
    if @lower.empty? || num <= @lower[0]
      insert_max(@lower, num)
    else
      insert_min(@higher, num)
    end

    rebalance
  end

  # @return [Float]
  def find_median
    if @lower.size == @higher.size
      (@lower[0] + @higher[0]) / 2.0
    elsif @lower.size > @higher.size
      @lower[0].to_f
    else
      @higher[0].to_f
    end
  end

  private

  def rebalance
    if @lower.size > @higher.size + 1
      move = pop_max(@lower)
      insert_min(@higher, move)
    elsif @higher.size > @lower.size + 1
      move = pop_min(@higher)
      insert_max(@lower, move)
    end
  end

  def insert_max(heap, val)
    heap << val
    sift_up_max(heap, heap.size - 1)
  end

  def insert_min(heap, val)
    heap << val
    sift_up_min(heap, heap.size - 1)
  end

  def pop_max(heap)
    return nil if heap.empty?

    last = heap.pop
    return last if heap.empty?

    max = heap[0]
    heap[0] = last
    sift_down_max(heap, 0)
    max
  end

  def pop_min(heap)
    return nil if heap.empty?

    last = heap.pop
    return last if heap.empty?

    min = heap[0]
    heap[0] = last
    sift_down_min(heap, 0)
    min
  end

  def sift_up_max(heap, idx)
    parent = (idx - 1) / 2

    while idx > 0 && heap[parent] < heap[idx]
      heap[parent], heap[idx] = heap[idx], heap[parent]
      idx = parent
      parent = (idx - 1) / 2
    end
  end

  def sift_up_min(heap, idx)
    parent = (idx - 1) / 2

    while idx > 0 && heap[parent] > heap[idx]
      heap[parent], heap[idx] = heap[idx], heap[parent]
      idx = parent
      parent = (idx - 1) / 2
    end
  end

  def sift_down_max(heap, idx)
    loop do
      left = 2 * idx + 1
      right = 2 * idx + 2
      largest = idx

      largest = left if left < heap.size && heap[left] > heap[largest]
      largest = right if right < heap.size && heap[right] > heap[largest]

      break if largest == idx

      heap[idx], heap[largest] = heap[largest], heap[idx]
      idx = largest
    end
  end

  def sift_down_min(heap, idx)
    loop do
      left = 2 * idx + 1
      right = 2 * idx + 2
      smallest = idx

      smallest = left if left < heap.size && heap[left] < heap[smallest]
      smallest = right if right < heap.size && heap[right] < heap[smallest]

      break if smallest == idx

      heap[idx], heap[smallest] = heap[smallest], heap[idx]
      idx = smallest
    end
  end
end
