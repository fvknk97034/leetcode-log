# 36. Valid Sudoku

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
# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  transposed_board = board.transpose
  aria_start_indexes = [0, 3, 6]
  arias = []
  board.each_with_index do |row, i|
    nums_row = row.reject { |r| r === '.' }
    return false unless nums_row.uniq === nums_row

    nums_transposed_board = transposed_board[i].reject { |r| r === '.' }
    return false unless nums_transposed_board.uniq === nums_transposed_board

    next unless aria_start_indexes.include?(i)

    aria_start_indexes.each do |j|
      range = (j..(j + 2))
      nums_array = row[range].concat(board[i + 1][range].concat(board[i + 2][range])).reject { |r| r === '.' }
      return false unless nums_array.uniq === nums_array
    end
  end
  true
end
```
