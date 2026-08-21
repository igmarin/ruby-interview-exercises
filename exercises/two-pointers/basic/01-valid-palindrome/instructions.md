# Valid Palindrome

- **Difficulty:** basic
- **Pattern:** two-pointers
- **Reference:** [LeetCode 125](https://leetcode.com/problems/valid-palindrome/)

## Problem

Given a string, determine if it reads the same forward and backward after considering only alphanumeric characters and ignoring case.

## Function signature

```ruby
def is_palindrome(s)
  # your implementation here
end
```

## Examples

| Input                         | Output |
|-------------------------------|--------|
| `"A man, a plan, a canal: Panama"` | `true` |
| `"race a car"`                | `false` |
| `" "`                         | `true` |

## Constraints

- The input string length is at most `2 * 10^5`.
- The string may contain any ASCII characters.

## Multi-part prompt

1. Implement a two-pointer approach that removes or ignores non-alphanumeric characters and compares characters from both ends.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `while` loops and left/right index invariants.
- `String#downcase` and `String#gsub` for normalizing input.
- Avoiding duplicate work by shrinking the search window from both ends.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
