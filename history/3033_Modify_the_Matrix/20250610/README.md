# 3033. Modify the Matrix

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
# @return {Integer[][]}
def modified_matrix(matrix)
  column_max_nums = matrix.transpose.map(&:max)

  matrix.map do |row|
    row.map.with_index do |cell, i|
      cell === -1 ? column_max_nums[i] : cell
    end
  end
end
```
