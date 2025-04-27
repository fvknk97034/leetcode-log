# 807. Max Increase to Keep City Skyline

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
def max_increase_keeping_skyline(grid)
  transposed_grid = grid.transpose

  (0...grid.length).sum do |i|
    row_max = grid[i].max
    (0...transposed_grid.length).sum do |j|
      column_max = transposed_grid[j].max
      [row_max, column_max].min - grid[i][j]
    end
  end
end
```
