# 190. Reverse Bits

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
# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
  n.to_s(2).rjust(32, '0').reverse.to_i(2)
end
```
