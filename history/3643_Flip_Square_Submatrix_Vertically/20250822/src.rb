# @param {Integer[][]} grid
# @param {Integer} x
# @param {Integer} y
# @param {Integer} k
# @return {Integer[][]}
def reverse_submatrix(grid, x, y, k)
  replacement_grid = grid[x, k].map { |row| row[y, k] }.reverse

  (x...x + k).each do |i|
    (y...y + k).each do |j|
      grid[i][j] = replacement_grid[i - x][j - y]
    end
  end
  grid
end
