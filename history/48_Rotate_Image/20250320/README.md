# 48. Rotate Image

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
# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
  first_index = 0
  last_index = matrix.length - 1

  (first_index...last_index).each do |i1|
    i2 = last_index - i1

    (i1...i2).each do |j1|
      j2 = last_index - j1

      matrix[i1][j1],
      matrix[j1][i2],
      matrix[i2][j2],
      matrix[j2][i1] = [
        matrix[j2][i1],
        matrix[i1][j1],
        matrix[j1][i2],
        matrix[i2][j2]
      ]
    end
  end
end
```
