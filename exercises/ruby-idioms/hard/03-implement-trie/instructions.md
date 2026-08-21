# Implement Trie (Prefix Tree)

- **Difficulty:** hard
- **Pattern:** ruby-idioms
- **Reference:** [LeetCode 208](https://leetcode.com/problems/implement-trie-prefix-tree/)

## Problem

Implement a trie (prefix tree) with these operations:

- `insert(word)` — store `word` in the trie.
- `search(word)` — return `true` if `word` was inserted as a complete word.
- `starts_with(prefix)` — return `true` if any stored word starts with `prefix`.

Words and prefixes consist of lowercase English letters.

## Class definition

```ruby
class Trie
  def initialize
    # your implementation here
  end

  def insert(word)
    # your implementation here
  end

  def search(word)
    # your implementation here
  end

  def starts_with(prefix)
    # your implementation here
  end
end
```

## Examples

| Operation | Result |
|-----------|--------|
| `Trie.new` | empty trie |
| `insert("apple")` | — |
| `search("apple")` | `true` |
| `search("app")` | `false` |
| `starts_with("app")` | `true` |
| `insert("app")` | — |
| `search("app")` | `true` |

## Constraints

- `1 <= word.length, prefix.length <= 2000`
- `word` and `prefix` contain only lowercase English letters.
- At most `3 * 10^4` calls in total to `insert`, `search`, and `starts_with`.

## Multi-part prompt

1. Represent each node as a `Hash` of children plus a boolean “end of word” flag.
2. Walk character by character for all three operations. Missing keys mean the word/prefix is absent.
3. Why is a nested `Hash` a natural Ruby trie? When would an array of 26 slots be faster, and when does it waste space?

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Nested `Hash` with a sentinel key (e.g. `:end`) or a small node object with `attr_accessor :children, :terminal`.
- `each_char` rather than `chars.each` to skip the extra array.
- Keep `search` and `starts_with` sharing a private walk helper.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
