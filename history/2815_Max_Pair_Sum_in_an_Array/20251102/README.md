# 2815. Max Pair Sum in an Array

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
# @return {Integer}
def max_sum(nums)
  maxs = nums.map { |num| num.digits.max }

  max_counts = maxs.tally
  return -1 if max_counts.values.all? { |m| m === 1 }

  multiple_nums = max_counts.filter { |_k, v| v >= 2 }.map(&:first)
  result = 0
  multiple_nums.each do |multiple_num|
    indices = maxs.map.with_index { |m, i| m === multiple_num ? i : nil }.compact
    result = [indices.map { |i| nums[i] }.max(2).sum, result].max
  end
  result
end
```
