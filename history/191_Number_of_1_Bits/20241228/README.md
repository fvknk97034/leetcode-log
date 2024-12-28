# 191. Number of 1 Bits

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
def hamming_weight(n)
  sum = 0
  until n === 0
    sum += n % 2
    n /= 2
  end
  sum
end
```
