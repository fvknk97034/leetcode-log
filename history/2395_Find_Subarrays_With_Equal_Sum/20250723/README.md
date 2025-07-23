# 2395. Find Subarrays With Equal Sum

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
# @return {Boolean}
def find_subarrays(nums)
  array = (0...nums.length - 1).map { |i| nums[i, 2].sum }
  array != array.uniq
end
```
