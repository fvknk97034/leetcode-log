# 3536. Maximum Product of Two Digits

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
def max_product(n)
  n.digits.max(2).inject(1) { |result, num| result * num }
end
```
