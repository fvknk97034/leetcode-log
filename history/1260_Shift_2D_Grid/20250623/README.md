# 1260. Shift 2D Grid

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
# @param {Integer} k
# @return {Integer[][]}
def shift_grid(grid, k)
  len = grid[0].length
  flatten_grid = grid.flatten

  k = k % flatten_grid.length if flatten_grid.length <= k
  (flatten_grid[-k..] || []).concat(flatten_grid[...-k])
                            .each_slice(len)
                            .to_a
end
```
