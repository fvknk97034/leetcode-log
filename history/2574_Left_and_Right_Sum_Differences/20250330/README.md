# 2574. Left and Right Sum Differences

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
def left_right_difference(nums)
  (0...nums.length).map { |i| (nums[...i].sum - nums[(i + 1)..].sum).abs }
end
```
