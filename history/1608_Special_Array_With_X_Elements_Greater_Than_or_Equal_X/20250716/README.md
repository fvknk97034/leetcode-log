# 1608. Special Array With X Elements Greater Than or Equal X

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
def special_array(nums)
  max = [nums.max, nums.length].min
  (1..max).find { |x| nums.count { |n| n >= x } === x } || -1
end
```
