# 2717. Semi-Ordered Permutation

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
def semi_ordered_permutation(nums)
  n = nums.length

  result = nums.index(1)
  nums.delete(1)

  result += nums.length - nums.index(n) - 1
end
```
