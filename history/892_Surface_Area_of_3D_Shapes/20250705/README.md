# 892. Surface Area of 3D Shapes

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
def surface_area(grid)
  result = grid.sum { |r| r.count(&:positive?) } * 2
  result += grid[0].sum + grid.sum(&:first) + grid[-1].sum + grid.sum(&:last)
  
  len = grid.length
  result += (0...len).sum do |i|
    (0...len).sum do |j|
      sum = i + 1 < len ? (grid[i][j] - grid[i + 1][j]).abs : 0
      sum += j + 1 < len ? (grid[i][j] - grid[i][j + 1]).abs : 0
    end
  end
end
```
