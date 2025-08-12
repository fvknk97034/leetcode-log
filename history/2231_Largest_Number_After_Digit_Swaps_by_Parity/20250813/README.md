# 2231. Largest Number After Digit Swaps by Parity

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
def largest_integer(num)
  digits = num.digits.reverse
  sorted_digits = digits.sort
  sorted_even_nums = sorted_digits.filter { |d| d.even? }
  sorted_odd_nums = sorted_digits - sorted_even_nums

  digits.map { |d| d.even? ? sorted_even_nums.pop : sorted_odd_nums.pop }.join.to_i
end
```
