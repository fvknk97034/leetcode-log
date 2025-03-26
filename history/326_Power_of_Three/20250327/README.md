# 326. Power of Three

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
def is_power_of_three(n)
  return false if n <= 0

  while n % 3 === 0
    n /= 3
  end
  n === 1
end
```
