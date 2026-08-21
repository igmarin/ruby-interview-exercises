# Word Frequency Counter

- **Difficulty:** basic
- **Pattern:** ruby-idioms
- **Reference:** original

## Problem

Given a string, return a hash that maps each downcased word to the number of times it appears. A word is a consecutive run of letters (`a-z`); ignore punctuation, numbers, whitespace, and empty strings.

## Function signature

```ruby
def word_frequency(text)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `"The quick brown fox"` | `{"the"=>1, "quick"=>1, "brown"=>1, "fox"=>1}` |
| `"Hello, HELLO! Hello..."` | `{"hello"=>3}` |
| `""` | `{}` |
| `"Ruby 3.2!"` | `{"ruby"=>1}` |

## Constraints

- Case should be normalized to lowercase.
- Punctuation and numbers should not produce word tokens.
- Empty or non-alphabetic input should produce an empty hash.

## Multi-part prompt

1. Extract words, normalize case, and tally their frequencies using Ruby's string and hash idioms.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Hash.new(0)`, `each_with_object`, `String#downcase`, `String#scan`, `Enumerable#tally`.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
