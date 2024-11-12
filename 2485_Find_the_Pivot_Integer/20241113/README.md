# 2485. Find the Pivot Integer

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
def pivot_integer(n)
  (n/2..n).find { |m| (1..m).sum === (m..n).sum } || -1
end
```
