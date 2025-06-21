# @param {Integer[][]} grid
# @return {Integer[][]}
def largest_local(grid)
  n = grid.length - 2
  (1..n).map do |i|
    rows = grid[i - 1, 3]
    (1..n).map do |j|
      rows.flat_map { |r| r[j - 1, 3] }.max
    end
  end
end
