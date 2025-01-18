# 2824. Count Pairs Whose Sum is Less than Target

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
# @param {Integer} target
# @return {Integer}
def count_pairs(nums, target)
  nums[0...].each_with_index.sum do |n, i|
    nums[(i + 1)..].count { |m| n + m < target }
  end
end
```
