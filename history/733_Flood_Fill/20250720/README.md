# 733. Flood Fill

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
# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} color
# @return {Integer[][]}
def flood_fill(image, sr, sc, color, target = image[sr][sc], filled_cells = [])
  image[sr][sc] = color
  filled_cells << [sr, sc]

  m = image.length
  n = image[0].length

  image = flood_fill(image, sr - 1, sc, color, target, filled_cells) if sr != 0 && !filled_cells.include?([sr - 1, sc]) && image[sr - 1][sc] === target
  image = flood_fill(image, sr + 1, sc, color, target, filled_cells) if sr != m - 1 && !filled_cells.include?([sr + 1, sc]) && image[sr + 1][sc] === target
  image = flood_fill(image, sr, sc - 1, color, target, filled_cells) if sc != 0 && !filled_cells.include?([sr, sc - 1]) && image[sr][sc - 1] === target
  image = flood_fill(image, sr, sc + 1, color, target, filled_cells) if sc != n - 1 && !filled_cells.include?([sr, sc + 1]) && image[sr][sc + 1] === target

  image
end
```
