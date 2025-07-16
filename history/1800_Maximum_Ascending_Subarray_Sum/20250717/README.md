# 1800. Maximum Ascending Subarray Sum

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
def max_ascending_sum(nums)
  nums.slice_when { |a, b| a >= b }.map(&:sum).max
end
```
