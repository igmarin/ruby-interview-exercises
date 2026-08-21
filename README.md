# Ruby Interview Exercises

A self-contained set of 40 Ruby coding exercises for Karat-style technical interviews.

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
│   │   │   └── 04-intersection-of-two-arrays/
│   │   ├── medium/
│   │   │   ├── 01-group-anagrams/
│   │   │   └── 02-top-k-frequent-elements/
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
| hash-maps | 4 | 2 | 1 | 7 |
| arrays-and-strings | 6 | 1 | 0 | 7 |
| two-pointers | 3 | 1 | 1 | 5 |
| sliding-window | 2 | 1 | 1 | 4 |
| trees-and-graphs | 3 | 3 | 4 | 10 |
| ruby-idioms | 2 | 2 | 2 | 6 |
| code-review | 0 | 0 | 1 | 1 |
| **Total** | **20** | **10** | **10** | **40** |

## Flat index

### Basic

- `exercises/hash-maps/basic/01-two-sum` — Two Sum (LeetCode 1)
- `exercises/hash-maps/basic/02-contains-duplicate` — Contains Duplicate (LeetCode 217)
- `exercises/hash-maps/basic/03-valid-anagram` — Valid Anagram (LeetCode 242)
- `exercises/hash-maps/basic/04-intersection-of-two-arrays` — Intersection of Two Arrays (LeetCode 349)
- `exercises/arrays-and-strings/basic/01-palindrome-number` — Palindrome Number (LeetCode 9)
- `exercises/arrays-and-strings/basic/02-reverse-string` — Reverse String (LeetCode 344)
- `exercises/arrays-and-strings/basic/03-fizzbuzz` — FizzBuzz (LeetCode 412)
- `exercises/arrays-and-strings/basic/04-move-zeroes` — Move Zeroes (LeetCode 283)
- `exercises/arrays-and-strings/basic/05-remove-duplicates-from-sorted-array` — Remove Duplicates from Sorted Array (LeetCode 26)
- `exercises/arrays-and-strings/basic/06-plus-one` — Plus One (LeetCode 66)
- `exercises/two-pointers/basic/01-valid-palindrome` — Valid Palindrome (LeetCode 125)
- `exercises/two-pointers/basic/02-two-sum-ii` — Two Sum II (LeetCode 167)
- `exercises/two-pointers/basic/03-merge-sorted-array` — Merge Sorted Array (LeetCode 88)
- `exercises/sliding-window/basic/01-maximum-average-subarray-i` — Maximum Average Subarray I (LeetCode 643)
- `exercises/sliding-window/basic/02-contains-duplicate-ii` — Contains Duplicate II (LeetCode 219)
- `exercises/trees-and-graphs/basic/01-maximum-depth-of-binary-tree` — Maximum Depth of Binary Tree (LeetCode 104)
- `exercises/trees-and-graphs/basic/02-invert-binary-tree` — Invert Binary Tree (LeetCode 226)
- `exercises/trees-and-graphs/basic/03-path-sum` — Path Sum (LeetCode 112)
- `exercises/ruby-idioms/basic/01-sum-and-average` — Sum and Average (original)
- `exercises/ruby-idioms/basic/02-word-frequency-counter` — Word Frequency Counter (original)

### Medium

- `exercises/hash-maps/medium/01-group-anagrams` — Group Anagrams (LeetCode 49)
- `exercises/hash-maps/medium/02-top-k-frequent-elements` — Top K Frequent Elements (LeetCode 347)
- `exercises/arrays-and-strings/medium/01-string-to-integer-atoi` — String to Integer (atoi) (LeetCode 8)
- `exercises/two-pointers/medium/01-3sum` — 3Sum (LeetCode 15)
- `exercises/sliding-window/medium/01-longest-substring-without-repeating-characters` — Longest Substring Without Repeating Characters (LeetCode 3)
- `exercises/trees-and-graphs/medium/01-binary-tree-level-order-traversal` — Binary Tree Level Order Traversal (LeetCode 102)
- `exercises/trees-and-graphs/medium/02-number-of-islands` — Number of Islands (LeetCode 200)
- `exercises/trees-and-graphs/medium/03-course-schedule` — Course Schedule (LeetCode 207)
- `exercises/ruby-idioms/medium/01-evaluate-reverse-polish-notation` — Evaluate Reverse Polish Notation (LeetCode 150)
- `exercises/ruby-idioms/medium/02-lru-cache` — LRU Cache (LeetCode 146)

### Hard

- `exercises/hash-maps/hard/01-longest-consecutive-sequence` — Longest Consecutive Sequence (LeetCode 128)
- `exercises/two-pointers/hard/01-trapping-rain-water` — Trapping Rain Water (LeetCode 42)
- `exercises/sliding-window/hard/01-sliding-window-maximum` — Sliding Window Maximum (LeetCode 239)
- `exercises/trees-and-graphs/hard/01-binary-tree-maximum-path-sum` — Binary Tree Maximum Path Sum (LeetCode 124)
- `exercises/trees-and-graphs/hard/02-serialize-and-deserialize-binary-tree` — Serialize and Deserialize Binary Tree (LeetCode 297)
- `exercises/trees-and-graphs/hard/03-word-ladder` — Word Ladder (LeetCode 127)
- `exercises/trees-and-graphs/hard/04-course-schedule-ii` — Course Schedule II (LeetCode 210)
- `exercises/ruby-idioms/hard/01-merge-k-sorted-lists` — Merge k Sorted Lists (LeetCode 23)
- `exercises/ruby-idioms/hard/02-find-median-from-data-stream` — Find Median from Data Stream (LeetCode 295)
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
