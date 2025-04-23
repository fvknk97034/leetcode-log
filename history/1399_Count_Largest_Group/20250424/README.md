# 1399. Count Largest Group

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
def count_largest_group(n)
  targets = (1..n).group_by { |num| num.digits.sum }.values
  max_len = targets.map { |v| v.length }.max
  targets.count { |v| v.length === max_len }
end
```
