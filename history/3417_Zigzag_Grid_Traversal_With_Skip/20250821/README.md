# 3417. Zigzag Grid Traversal With Skip

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
# @return {Integer[]}
def zigzag_traversal(grid)
  even_row_using_last = grid[0].length.odd?
  row_len = grid[0].length
  even_row_indexes = (even_row_using_last ? -2 : -1).step(by: -2, to: -row_len).to_a
  odd_row_indexes = (0...row_len).step(2).to_a

  grid.flat_map.with_index do |row, i|
    next even_row_indexes.map { |j| row[j] } if i.odd?

    odd_row_indexes.map { |j| row[j] }
  end
end
```
