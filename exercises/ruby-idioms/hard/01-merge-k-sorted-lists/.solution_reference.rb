# frozen_string_literal: true

# @param [Array<Array<Integer>>] lists
# @return [Array<Integer>]
def merge_k_lists(lists)
  heap = []

  lists.each_with_index do |list, index|
    next if list.empty?

    heap_push(heap, [list[0], index, 0])
  end

  result = []

  until heap.empty?
    val, list_index, elem_index = heap_pop(heap)
    result << val

    next_index = elem_index + 1
    if next_index < lists[list_index].length
      heap_push(heap, [lists[list_index][next_index], list_index, next_index])
    end
  end

  result
end

def heap_push(heap, item)
  heap << item
  sift_up(heap, heap.size - 1)
end

def heap_pop(heap)
  return nil if heap.empty?

  last = heap.pop
  return last if heap.empty?

  min = heap[0]
  heap[0] = last
  sift_down(heap, 0)
  min
end

def sift_up(heap, idx)
  parent = (idx - 1) / 2

  while idx > 0 && heap[parent][0] > heap[idx][0]
    heap[parent], heap[idx] = heap[idx], heap[parent]
    idx = parent
    parent = (idx - 1) / 2
  end
end

def sift_down(heap, idx)
  loop do
    left = 2 * idx + 1
    right = 2 * idx + 2
    smallest = idx

    smallest = left if left < heap.size && heap[left][0] < heap[smallest][0]
    smallest = right if right < heap.size && heap[right][0] < heap[smallest][0]

    break if smallest == idx

    heap[idx], heap[smallest] = heap[smallest], heap[idx]
    idx = smallest
  end
end
