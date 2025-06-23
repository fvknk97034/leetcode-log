# @param {Integer[][]} grid
# @param {Integer} k
# @return {Integer[][]}
def shift_grid(grid, k)
  len = grid[0].length
  flatten_grid = grid.flatten

  k = k % flatten_grid.length if flatten_grid.length <= k
  (flatten_grid[-k..] || []).concat(flatten_grid[...-k])
                            .each_slice(len)
                            .to_a
end
