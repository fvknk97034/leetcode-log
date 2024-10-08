# 1979. Find Greatest Common Divisor of Array

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
def find_gcd(nums)
  nums.min.gcd(nums.max)
end
```
