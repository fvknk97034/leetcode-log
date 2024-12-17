# 2389. Longest Subsequence With Limited Sum

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {Integer[]} nums
# @param {Integer[]} queries
# @return {Integer[]}
def answer_queries(nums, queries)
  answers = []

  count_sums = {}
  nums.sort!
  nums.each_index { |i| count_sums[i + 1] = nums[0..i].sum }

  queries.each { |q| answers << (count_sums.filter { |k, v| v <= q }.keys.max || 0) }
  answers
end
```
