# Group Anagrams

- **Difficulty:** medium
- **Pattern:** hash-maps
- **Reference:** LeetCode 49 — https://leetcode.com/problems/group-anagrams/

## Problem

Given an array of strings `strs`, group the anagrams together. You can return the answer in any order. An anagram is a word or phrase formed by rearranging the letters of a different word or phrase, using all the original letters exactly once.

## Function signature

```ruby
def group_anagrams(strs)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `strs = ["eat","tea","tan","ate","nat","bat"]` | `[["bat"],["nat","tan"],["ate","eat","tea"]]` (in any order) |
| `strs = [""]` | `[[""]]` |
| `strs = ["a"]` | `[["a"]]` |

## Constraints

- `1 <= strs.length <= 10^4`
- `0 <= strs[i].length <= 100`
- `strs[i]` consists of lowercase English letters.

## Multi-part prompt

1. Group the strings using a sorted-string key. What is the time and space complexity?
2. Group the strings using a character-count key. What is the time and space complexity?
3. Compare the two approaches. When might a count-based key be worth the extra implementation complexity?

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Hash.new`, `group_by`, `Hash.new(0)`, `each_char`

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
