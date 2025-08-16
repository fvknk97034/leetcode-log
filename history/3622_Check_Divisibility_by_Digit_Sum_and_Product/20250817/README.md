# 3622. Check Divisibility by Digit Sum and Product

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
def check_divisibility(n)
  digits = n.digits
  sum = digits.sum
  product = digits.inject(1) { |result, v| result *= v }

  n % (sum + product) === 0
end
```
