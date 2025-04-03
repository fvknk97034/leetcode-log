# 2873. Maximum Value of an Ordered Triplet I

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
def maximum_triplet_value(nums)
  combination = nums.combination(3).max_by { (_1 - _2) * _3 }
  
  result = (combination[0] - combination[1]) * combination[2]
  result < 0 ? 0 : result
end
```
