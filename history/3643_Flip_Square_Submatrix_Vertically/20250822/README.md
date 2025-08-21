# 3643. Flip Square Submatrix Vertically

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
# @param {Integer} x
# @param {Integer} y
# @param {Integer} k
# @return {Integer[][]}
def reverse_submatrix(grid, x, y, k)
  replacement_grid = grid[x, k].map { |row| row[y, k] }.reverse
  
  (x...x + k).each do |i|
    (y...y + k).each do |j|
      grid[i][j] = replacement_grid[i - x][j - y]
    end
  end
  grid
end
```
