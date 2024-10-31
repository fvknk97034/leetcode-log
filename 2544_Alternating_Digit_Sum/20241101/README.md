# 2544. Alternating Digit Sum

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
# @return {Integer}
def alternate_digit_sum(n)
  n.to_s.chars.each_with_index.inject(0){ |result, v| result + (v[1] % 2 == 0 ? v[0].to_i : - v[0].to_i) }
end
```
