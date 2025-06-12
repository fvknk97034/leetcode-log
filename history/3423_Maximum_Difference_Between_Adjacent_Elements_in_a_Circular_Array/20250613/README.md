# 3423. Maximum Difference Between Adjacent Elements in a Circular Array

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
def max_adjacent_distance(nums)
  result = 0

  nums << nums[0]
  nums.each_cons(2) do |n|
    result = [(n[1] - n[0]).abs, (n[0] - n[1]).abs, result].max
  end

  result
end
```
