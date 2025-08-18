# 3345. Smallest Divisible Digit Product I

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
# @param {Integer} t
# @return {Integer}
def smallest_number(n, t)
  return n if n % 10 === 0
  return t if n <= t

  result = n
  until result % 10 === 0
    product = result.digits.inject(1) { |result, value| result *= value }
    return result if product % t === 0

    result += 1
  end
  result
end
```
