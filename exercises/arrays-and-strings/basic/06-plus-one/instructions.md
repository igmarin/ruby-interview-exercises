# Plus One

- **Difficulty:** basic
- **Pattern:** arrays-and-strings
- **Reference:** [LeetCode 66](https://leetcode.com/problems/plus-one/)

## Problem

You are given a large integer represented as an array of digits, where the most significant digit is at the head of the list. Increment the integer by one and return the resulting array of digits.

## Function signature

```ruby
def plus_one(digits)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[1, 2, 3]` | `[1, 2, 4]` |
| `[4, 3, 2, 1]` | `[4, 3, 2, 2]` |
| `[9]` | `[1, 0]` |

## Constraints

- `1 <= digits.length <= 100`
- `0 <= digits[i] <= 9`
- The array does not contain leading zeroes except for the number `0` itself.

## Multi-part prompt

1. Handle the carry from the least significant digit and return a possibly longer array when the entire input is `9`s.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Walk the array from the end to the beginning, propagating the carry.
- Use array indexing to mutate digits in place when possible.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
