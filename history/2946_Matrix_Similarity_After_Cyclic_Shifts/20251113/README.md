# 2946. Matrix Similarity After Cyclic Shift

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
# @param {Integer[][]} mat
# @param {Integer} k
# @return {Boolean}
def are_similar(mat, k)
  k_step_after_mat = mat.map { |row| row.map { |cell| cell } }

  row_len = mat[0].length
  return true if k === row_len

  count = k > row_len ? k % row_len : k

  k_step_after_mat.map!.with_index do |row, i|
    if i.even?
      a = row.shift(count)
      next row.concat(a)
    end

    a = row.pop(count)
    row.unshift(*a)
  end

  mat === k_step_after_mat
end
```
