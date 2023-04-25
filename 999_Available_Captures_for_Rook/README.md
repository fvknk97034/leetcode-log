# 999. Available Captures for Rook

## Intuition

- 空白を除いて隣接しているのが`'p'`であれば加算する
- `transpose`で転置して同様の処理を行う

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
# @return {Integer}
def num_rook_captures(board)
  num = 0
  transposed_board = board.transpose

  has_rook_line = board.index { |b| b.include?('R') }

  board[has_rook_line].delete('.')
  has_rook_column = board[has_rook_line].index { |b| b.include?('R') }

  num += (has_rook_column > 0 && board[has_rook_line][has_rook_column - 1] == 'p') ? 1 : 0
  num += (has_rook_column < 8 && board[has_rook_line][has_rook_column + 1] == 'p') ? 1 : 0

  has_rook_line = transposed_board.index { |b| b.include?('R') }

  transposed_board[has_rook_line].delete('.')
  has_rook_column = transposed_board[has_rook_line].index { |b| b.include?('R') }

  num += (has_rook_column > 0 && transposed_board[has_rook_line][has_rook_column - 1] == 'p') ? 1 : 0
  num += (has_rook_column < 8 && transposed_board[has_rook_line][has_rook_column + 1] == 'p') ? 1 : 0
end
```
