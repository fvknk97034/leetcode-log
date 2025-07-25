# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index, current_row = row_index)
  return [1] * (current_row + 1) if current_row < 2

  row = [1]

  parent_row = get_row(row_index, current_row - 1) if current_row > 0
  row.concat(parent_row.each_cons(2).map(&:sum))

  row << 1
end
