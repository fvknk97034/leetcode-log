# 2427. Number of Common Factors

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
# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def common_factors(a, b)
  min = [a, b].min

  (1..min).count { |n| a % n === 0 && b % n === 0 }
end
```
