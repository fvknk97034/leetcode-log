# 2894. Divisible and Non-divisible Sums Difference

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
# @param {Integer} m
# @return {Integer}
def difference_of_sums(n, m)
  (1..n).sum{ |a| a % m == 0 ? -a : a }
end
```
