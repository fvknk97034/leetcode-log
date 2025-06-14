# 2566. Maximum Difference by Remapping a Digit

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
# @param {Integer} num
# @return {Integer}
def min_max_difference(num)
  digits = num.digits.reverse

  first_digit = digits[0]
  min = digits.map { |d| d === first_digit ? 0 : d }.join.to_i

  max_not_9_digit = digits.find { |d| d != 9 }
  max = digits.map { |d| d === max_not_9_digit ? 9 : d }.join.to_i

  max - min
end
```
