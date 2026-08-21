# Sum and Average

- **Difficulty:** basic
- **Pattern:** ruby-idioms
- **Reference:** original

## Problem

Given an array of numbers, return a two-element array containing the total sum and the arithmetic mean. Return `nil` when the input array is empty.

## Function signature

```ruby
def sum_and_average(nums)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[1, 2, 3, 4]` | `[10, 2.5]` |
| `[1.5, 2.5, 3.0]` | `[7.0, 2.333...]` |
| `[]` | `nil` |
| `[5]` | `[5, 5.0]` |

## Constraints

- `nums` may contain integers or floats.
- The average must be returned as a `Float`.
- An empty array should return `nil`.

## Multi-part prompt

1. Use Ruby collection methods and floating-point division to return `[sum, average]`, guarding against an empty input.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `each`, `reduce`, `Array#sum`, floating-point division, guard clauses.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
