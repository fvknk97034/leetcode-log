# @param {Integer[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def game_of_life(board)
  column_len = board[0].length
  row_len = board.length
  old_board = board.map(&:dup)
  (0...row_len).each do |i|
    target_row = if i === 0
                   old_board[0, 2]
                 elsif i === row_len - 1
                   old_board[row_len - 2, 2]
                 else
                   old_board[(i - 1), 3]
                 end

    (0...column_len).each do |j|
      target = if j === 0
                 target_row.map { |t| t[0, 2] }
               elsif j === column_len - 1
                 target_row.map { |t| t[column_len - 2, 2] }
               else
                 target_row.map { |t| t[j - 1, 3] }
               end

      count = target.flatten.count(1) - old_board[i][j]
      next board[i][j] = 1 if count === 3
      next board[i][j] = 1 if old_board[i][j] === 1 && count === 2

      board[i][j] = 0
    end
  end
  board
end
