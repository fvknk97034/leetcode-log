# 1137. N-th Tribonacci Number

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
def tribonacci(n)
  numbers = [0, 1, 1]
  return numbers[n] if n <= 2

  (3..n).each do |i|
    numbers << numbers.sum
    numbers.shift
  end
  numbers[-1]
end
```
