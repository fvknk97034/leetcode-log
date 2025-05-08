# 2733. Neither Minimum nor Maximum

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
def find_non_min_or_max(nums)
  return -1 if nums.length <= 2

  max, min = [nums.max, nums.min]
  nums.find { |n| !(n === max || n === min) }
end
```
