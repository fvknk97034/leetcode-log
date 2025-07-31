# @param {Integer[][]} grid
# @return {Boolean}
def check_x_matrix(grid)
  n = grid.length
  (0...n).all? do |i|
    (0...n).all? do |j|
      next grid[i][j] != 0 if i === j || i === n - 1 - j

      grid[i][j] === 0
    end
  end
end
