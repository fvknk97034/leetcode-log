# 66. Plus One

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
# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  digits[-1] += 1
  i = digits.index { |d| d >= 10 }
  while i
    digits[i] = 0
    i === 0 ? digits.unshift(1) : digits[i - 1] += 1
    i = digits.index { |d| d >= 10 }
  end
  digits
end
```
