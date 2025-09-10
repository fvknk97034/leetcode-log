# 2164. Sort Even and Odd Indices Independently

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
# @return {Integer[]}
def sort_even_odd(nums)
  evens, odds = nums.partition.with_index { |_n, i| i.even? }
  evens.sort!
  odds.sort!

  evens.flat_map { |n| [n, odds.pop] }.compact
end
```
