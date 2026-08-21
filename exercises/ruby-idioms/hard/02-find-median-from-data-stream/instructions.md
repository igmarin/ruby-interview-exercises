# Find Median from Data Stream

- **Difficulty:** hard
- **Pattern:** ruby-idioms
- **Reference:** [LeetCode 295](https://leetcode.com/problems/find-median-from-data-stream/)

## Problem

Design a data structure that supports adding integers from a data stream and retrieving the median of all numbers seen so far.

- `add_num(num)`: Adds `num` from the stream.
- `find_median()`: Returns the median of the current numbers as a `Float`.

If the count of numbers is odd, the median is the middle value. If the count is even, the median is the average of the two middle values.

## Class definition

```ruby
class MedianFinder
  def initialize
    # your implementation here
  end

  def add_num(num)
    # your implementation here
  end

  def find_median
    # your implementation here
  end
end
```

## Examples

| Operation sequence | Result |
|--------------------|--------|
| `MedianFinder.new` | |
| `add_num(1)` | |
| `add_num(2)` | `find_median` returns `1.5` |
| `add_num(3)` | `find_median` returns `2.0` |

## Constraints

- The stream may contain positive, negative, and zero values.
- Median must be returned as a `Float`.
- `add_num` and `find_median` should be efficient, ideally `O(log n)` for inserts and `O(1)` for the query.

## Multi-part prompt

1. Start by keeping a sorted `Array` and inserting each number with `bsearch` or linear search. What is the time complexity of insert?
2. Reimplement with two heaps: a max-heap for the lower half and a min-heap for the upper half.
3. Implement the heaps using plain `Array` objects with manual sift-up and sift-down operations.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Array` as heap, `Float`, sift up/down, insert/remove.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
