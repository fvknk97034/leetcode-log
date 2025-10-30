# 3697. Compute Decimal Representation

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
def decimal_representation(n)
  n.digits
   .map
   .with_index { |n, i| n === 0 ? nil : n * (10 ** i) }
   .compact
   .reverse
end
```
