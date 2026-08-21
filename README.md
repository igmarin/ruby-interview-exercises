# Ruby Interview Exercises

A self-contained set of 55 Ruby exercises for Karat-style technical interviews (54 coding problems plus one discussion).

The repo is organized by **pattern** and **difficulty**. Each exercise gives you a paraphrased problem, a starter file, and a hidden reference solution so you can practice TDD, compare your answer, and rehearse your "explain while you code" flow.

## Quick start

1. Pick an exercise folder, e.g. `exercises/hash-maps/basic/01-two-sum/`.
2. Read `instructions.md` and work in `solution.rb`.
3. Run the test suite:

   ```bash
   ruby test.rb
   ```

4. Only when you are done (or stuck) should you peek at `.solution_reference.rb`.

To run every test at once:

```bash
ruby run_all_tests.rb
```

## Repository layout

```
ruby-interview-exercises/
├── README.md
├── docs/
│   └── plan-and-next-steps.md
├── run_all_tests.rb
├── exercises/
│   ├── hash-maps/
│   │   ├── basic/
│   │   │   ├── 01-two-sum/
│   │   │   ├── 02-contains-duplicate/
│   │   │   ├── 03-valid-anagram/
│   │   │   ├── 04-intersection-of-two-arrays/
│   │   │   └── 05-ransom-note/
│   │   ├── medium/
│   │   │   ├── 01-group-anagrams/
│   │   │   ├── 02-top-k-frequent-elements/
│   │   │   └── 03-subarray-sum-equals-k/
│   │   └── hard/
│   │       └── 01-longest-consecutive-sequence/
│   ├── arrays-and-strings/
│   ├── two-pointers/
│   ├── sliding-window/
│   ├── trees-and-graphs/
│   ├── ruby-idioms/
│   └── code-review/
└── AGENTS.md
```

Every coding exercise contains:

- `instructions.md` — problem, examples, constraints, multi-part prompt, discussion rubric.
- `solution.rb` — starter stub (`raise NotImplementedError`).
- `test.rb` — `Minitest` test suite.
- `.solution_reference.rb` — hidden reference answer.

The `code-review/hard/01-ruby-code-review-and-rubric/` exercise is a discussion exercise. It contains `instructions.md` and `.discussion_guide.md` but no code files.

## Patterns covered

| Pattern | Basic | Medium | Hard | Total |
|---------|-------|--------|------|-------|
| hash-maps | 5 | 3 | 1 | 9 |
| arrays-and-strings | 7 | 2 | 1 | 10 |
| two-pointers | 4 | 2 | 2 | 8 |
| sliding-window | 3 | 2 | 2 | 7 |
| trees-and-graphs | 4 | 4 | 5 | 13 |
| ruby-idioms | 2 | 2 | 3 | 7 |
| code-review | 0 | 0 | 1 | 1 |
| **Total** | **25** | **15** | **15** | **55** |

## Flat index

### Basic

- `exercises/hash-maps/basic/01-two-sum` — Two Sum (LeetCode 1)
- `exercises/hash-maps/basic/02-contains-duplicate` — Contains Duplicate (LeetCode 217)
- `exercises/hash-maps/basic/03-valid-anagram` — Valid Anagram (LeetCode 242)
- `exercises/hash-maps/basic/04-intersection-of-two-arrays` — Intersection of Two Arrays (LeetCode 349)
- `exercises/hash-maps/basic/05-ransom-note` — Ransom Note (LeetCode 383)
- `exercises/arrays-and-strings/basic/01-palindrome-number` — Palindrome Number (LeetCode 9)
- `exercises/arrays-and-strings/basic/02-reverse-string` — Reverse String (LeetCode 344)
- `exercises/arrays-and-strings/basic/03-fizzbuzz` — FizzBuzz (LeetCode 412)
- `exercises/arrays-and-strings/basic/04-move-zeroes` — Move Zeroes (LeetCode 283)
- `exercises/arrays-and-strings/basic/05-remove-duplicates-from-sorted-array` — Remove Duplicates from Sorted Array (LeetCode 26)
- `exercises/arrays-and-strings/basic/06-plus-one` — Plus One (LeetCode 66)
- `exercises/arrays-and-strings/basic/07-longest-common-prefix` — Longest Common Prefix (LeetCode 14)
- `exercises/two-pointers/basic/01-valid-palindrome` — Valid Palindrome (LeetCode 125)
- `exercises/two-pointers/basic/02-two-sum-ii` — Two Sum II (LeetCode 167)
- `exercises/two-pointers/basic/03-merge-sorted-array` — Merge Sorted Array (LeetCode 88)
- `exercises/two-pointers/basic/04-squares-of-a-sorted-array` — Squares of a Sorted Array (LeetCode 977)
- `exercises/sliding-window/basic/01-maximum-average-subarray-i` — Maximum Average Subarray I (LeetCode 643)
- `exercises/sliding-window/basic/02-contains-duplicate-ii` — Contains Duplicate II (LeetCode 219)
- `exercises/sliding-window/basic/03-max-consecutive-ones` — Max Consecutive Ones (LeetCode 485)
- `exercises/trees-and-graphs/basic/01-maximum-depth-of-binary-tree` — Maximum Depth of Binary Tree (LeetCode 104)
- `exercises/trees-and-graphs/basic/02-invert-binary-tree` — Invert Binary Tree (LeetCode 226)
- `exercises/trees-and-graphs/basic/03-path-sum` — Path Sum (LeetCode 112)
- `exercises/trees-and-graphs/basic/04-same-tree` — Same Tree (LeetCode 100)
- `exercises/ruby-idioms/basic/01-sum-and-average` — Sum and Average (original)
- `exercises/ruby-idioms/basic/02-word-frequency-counter` — Word Frequency Counter (original)

### Medium

- `exercises/hash-maps/medium/01-group-anagrams` — Group Anagrams (LeetCode 49)
- `exercises/hash-maps/medium/02-top-k-frequent-elements` — Top K Frequent Elements (LeetCode 347)
- `exercises/hash-maps/medium/03-subarray-sum-equals-k` — Subarray Sum Equals K (LeetCode 560)
- `exercises/arrays-and-strings/medium/01-string-to-integer-atoi` — String to Integer (atoi) (LeetCode 8)
- `exercises/arrays-and-strings/medium/02-product-of-array-except-self` — Product of Array Except Self (LeetCode 238)
- `exercises/two-pointers/medium/01-3sum` — 3Sum (LeetCode 15)
- `exercises/two-pointers/medium/02-container-with-most-water` — Container With Most Water (LeetCode 11)
- `exercises/sliding-window/medium/01-longest-substring-without-repeating-characters` — Longest Substring Without Repeating Characters (LeetCode 3)
- `exercises/sliding-window/medium/02-minimum-size-subarray-sum` — Minimum Size Subarray Sum (LeetCode 209)
- `exercises/trees-and-graphs/medium/01-binary-tree-level-order-traversal` — Binary Tree Level Order Traversal (LeetCode 102)
- `exercises/trees-and-graphs/medium/02-number-of-islands` — Number of Islands (LeetCode 200)
- `exercises/trees-and-graphs/medium/03-course-schedule` — Course Schedule (LeetCode 207)
- `exercises/trees-and-graphs/medium/04-clone-graph` — Clone Graph (LeetCode 133)
- `exercises/ruby-idioms/medium/01-evaluate-reverse-polish-notation` — Evaluate Reverse Polish Notation (LeetCode 150)
- `exercises/ruby-idioms/medium/02-lru-cache` — LRU Cache (LeetCode 146)

### Hard

- `exercises/hash-maps/hard/01-longest-consecutive-sequence` — Longest Consecutive Sequence (LeetCode 128)
- `exercises/arrays-and-strings/hard/01-first-missing-positive` — First Missing Positive (LeetCode 41)
- `exercises/two-pointers/hard/01-trapping-rain-water` — Trapping Rain Water (LeetCode 42)
- `exercises/two-pointers/hard/02-4sum` — 4Sum (LeetCode 18)
- `exercises/sliding-window/hard/01-sliding-window-maximum` — Sliding Window Maximum (LeetCode 239)
- `exercises/sliding-window/hard/02-minimum-window-substring` — Minimum Window Substring (LeetCode 76)
- `exercises/trees-and-graphs/hard/01-binary-tree-maximum-path-sum` — Binary Tree Maximum Path Sum (LeetCode 124)
- `exercises/trees-and-graphs/hard/02-serialize-and-deserialize-binary-tree` — Serialize and Deserialize Binary Tree (LeetCode 297)
- `exercises/trees-and-graphs/hard/03-word-ladder` — Word Ladder (LeetCode 127)
- `exercises/trees-and-graphs/hard/04-course-schedule-ii` — Course Schedule II (LeetCode 210)
- `exercises/trees-and-graphs/hard/05-alien-dictionary` — Alien Dictionary (LeetCode 269)
- `exercises/ruby-idioms/hard/01-merge-k-sorted-lists` — Merge k Sorted Lists (LeetCode 23)
- `exercises/ruby-idioms/hard/02-find-median-from-data-stream` — Find Median from Data Stream (LeetCode 295)
- `exercises/ruby-idioms/hard/03-implement-trie` — Implement Trie (LeetCode 208)
- `exercises/code-review/hard/01-ruby-code-review-and-rubric` — Ruby Code Review & Rubric (original)

## How to get the most out of the exercises

1. **Solve first, peek later.** Treat `.solution_reference.rb` as a spoiler. Try the problem, run `ruby test.rb`, and debug before opening it.
2. **Talk out loud.** Write your approach, complexity, and edge cases in a comment or say them out loud. Interviews reward communication.
3. **Time yourself.** Basic problems should take 5–15 minutes, medium 15–30, hard 30–45.
4. **Review with someone.** When you finish a batch, open a new session and we can pair-review: compare your solution to the reference, refine complexity analysis, and practice explaining trade-offs.

## Suggested order

A balanced 6-week plan is in `docs/plan-and-next-steps.md`. A faster path:

1. Week 1–2: All `basic` exercises, grouped by pattern.
2. Week 3–4: All `medium` exercises.
3. Week 5–6: All `hard` exercises, including the code review discussion.

## Notes

- All tests use `Minitest` from the Ruby standard library. No `bundle install` is required.
- LeetCode problem statements are paraphrased; problem numbers and links are provided as references.
- The `AGENTS.md` file captures project conventions for future tooling.
