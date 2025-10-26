# 1175. Prime Arrangements

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
def num_prime_arrangements(n)
  prime_count = 0
  not_prime_count = 1
  result = (2..n).inject(1) do |result, num|
    target = if prime?(num)
               prime_count += 1
             else
               not_prime_count += 1
             end

    result *= target
  end
  result % (10 ** 9 + 7)
end

def prime?(num)
  (2..Math.sqrt(num)).none? do |n|
    num % n === 0
  end
end
```
