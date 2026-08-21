# Longest Common Prefix

- **Difficulty:** basic
- **Pattern:** arrays-and-strings
- **Reference:** [LeetCode 14](https://leetcode.com/problems/longest-common-prefix/)

## Problem

Write a function that finds the longest common prefix string among an array of strings. If there is no common prefix, return the empty string `""`.

## Function signature

```ruby
def longest_common_prefix(strs)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `["flower", "flow", "flight"]` | `"fl"` |
| `["dog", "racecar", "car"]` | `""` |

## Constraints

- `1 <= strs.length <= 200`
- `0 <= strs[i].length <= 200`
- `strs[i]` consists of lowercase English letters if it is non-empty.

## Multi-part prompt

1. Use the first string as a candidate prefix and shrink it whenever a later string does not start with it.
2. Alternatively, walk character by character at each index and stop at the first mismatch or when a string runs out of characters.
3. What happens if `strs` contains an empty string?

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `String#[]` / `start_with?` for prefix checks.
- Prefer iterating characters with an index over repeatedly slicing new strings.
- `min_by(&:length)` can bound how far you scan.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
