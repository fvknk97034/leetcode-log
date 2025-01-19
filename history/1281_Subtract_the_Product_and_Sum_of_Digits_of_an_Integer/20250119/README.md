# 1281. Subtract the Product and Sum of Digits of an Integer

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
def subtract_product_and_sum(n)
  nums = n.to_s.chars.map(&:to_i)
  nums.inject(1) { |result, item| result *= item } - nums.sum
end
```
