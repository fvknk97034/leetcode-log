# 693. Binary Number with Alternating Bits

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
# @return {Boolean}
def has_alternating_bits(n)
  n.to_s(2).chars.each_cons(2).none? { |a, b| a === b }
end
```
