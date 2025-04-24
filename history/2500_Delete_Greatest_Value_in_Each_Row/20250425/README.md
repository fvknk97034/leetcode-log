# 2500. Delete Greatest Value in Each Row

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
# @param {Integer[][]} grid
# @return {Integer}
def delete_greatest_value(grid)
    grid.map(&:sort).transpose.sum(&:max)
end
```
