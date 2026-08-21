# LRU Cache

- **Difficulty:** medium
- **Pattern:** ruby-idioms
- **Reference:** [LeetCode 146](https://leetcode.com/problems/lru-cache/)

## Problem

Design a data structure that follows the constraints of a Least Recently Used (LRU) cache. The cache has a fixed capacity and supports two operations in `O(1)` average time:

- `get(key)`: Returns the value of the `key` if it exists, otherwise `-1`.
- `put(key, value)`: Inserts or updates the value of the `key`. If the cache exceeds its capacity, evict the least recently used key.

## Class definition

```ruby
class LRUCache
  def initialize(capacity)
    # your implementation here
  end

  def get(key)
    # your implementation here
  end

  def put(key, value)
    # your implementation here
  end
end
```

## Examples

| Operation sequence | State / result |
|--------------------|----------------|
| `LRUCache.new(2)` | cache = `{}` |
| `put(1, 1)` | cache = `{1=>1}` |
| `put(2, 2)` | cache = `{1=>1, 2=>2}` |
| `get(1)` | returns `1` (key 1 is now most recently used) |
| `put(3, 3)` | evicts key 2; cache = `{1=>1, 3=>3}` |
| `get(2)` | returns `-1` |
| `put(4, 4)` | evicts key 1; cache = `{3=>3, 4=>4}` |

## Constraints

- `capacity` is a non-negative integer.
- `get` and `put` should run in `O(1)` average time.
- Updating an existing key makes it the most recently used.

## Multi-part prompt

1. Implement a naive version with a hash and an array of keys. What is its time complexity?
2. Reimplement with `Hash` insertion order, using `Hash#delete` and re-insertion to mark a key as recently used and `Hash#shift` to evict the oldest.
3. Handle capacity `0`, single-element capacity, and updating an existing key.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Hash` order, `Hash#shift`, `Hash#delete`, `each`.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
