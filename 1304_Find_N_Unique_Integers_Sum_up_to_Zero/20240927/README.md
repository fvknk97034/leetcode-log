# 1304. Find N Unique Integers Sum up to Zero

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
# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
  n % 2 == 1 ? Range.new(-n / 2 + 1, n / 2).to_a : Range.new(-n / 2, n / 2).to_a - [0]
end
```
