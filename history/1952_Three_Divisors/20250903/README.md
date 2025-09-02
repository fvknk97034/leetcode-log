# 1952. Three Divisors

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
def is_three(n)
  sqrt = Math.sqrt(n)
  return false unless sqrt - sqrt.to_i === 0

  (1..sqrt).count { |d| n % d === 0 } + 1 === 3
end
```
