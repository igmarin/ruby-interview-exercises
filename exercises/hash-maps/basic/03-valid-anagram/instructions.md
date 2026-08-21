# Valid Anagram

- **Difficulty:** basic
- **Pattern:** hash-maps
- **Reference:** LeetCode 242 — https://leetcode.com/problems/valid-anagram/

## Problem

Given two strings `s` and `t`, return `true` if `t` is an anagram of `s`, and `false` otherwise. An anagram is a word or phrase formed by rearranging the letters of a different word or phrase, using all the original letters exactly once.

## Function signature

```ruby
def is_anagram(s, t)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `s = "anagram", t = "nagaram"` | `true` |
| `s = "rat", t = "car"` | `false` |
| `s = "a", t = "ab"` | `false` |

## Constraints

- `1 <= s.length, t.length <= 5 * 10^4`
- `s` and `t` consist of lowercase English letters.

## Multi-part prompt

1. Implement a linear-time solution using a frequency hash.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Hash.new(0)`, `each_char`

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
