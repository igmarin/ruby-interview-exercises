# Ransom Note

- **Difficulty:** basic
- **Pattern:** hash-maps
- **Reference:** [LeetCode 383](https://leetcode.com/problems/ransom-note/)

## Problem

Given two strings `ransom_note` and `magazine`, return `true` if `ransom_note` can be constructed using the letters from `magazine`, and `false` otherwise. Each letter in `magazine` may be used at most once.

## Function signature

```ruby
def can_construct(ransom_note, magazine)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `ransom_note = "a", magazine = "b"` | `false` |
| `ransom_note = "aa", magazine = "ab"` | `false` |
| `ransom_note = "aa", magazine = "aab"` | `true` |

## Constraints

- `1 <= ransom_note.length, magazine.length <= 10^5`
- `ransom_note` and `magazine` consist of lowercase English letters.

## Multi-part prompt

1. Count letters in `magazine` with a hash map, then decrement as you consume letters for `ransom_note`. Return `false` as soon as a count would go negative.
2. Why is a hash map (or a 26-slot array) preferable to scanning `magazine` for every character of `ransom_note`?

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Hash.new(0)` for frequency counts.
- `each_char` to iterate without allocating an intermediate array of characters.
- Early return when a needed count is missing (`key?` or a zero default).

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
