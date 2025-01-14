# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [[1]] if num_rows === 1
  return [[1], [1, 1]] if num_rows === 2

  results = [[1], [1, 1]]

  row_index = 2
  until row_index === num_rows
    row = [1]
    i = 1
    until i === row_index
      row << results[-1][i - 1] + results[-1][i]
      i += 1
    end
    row << 1
    row_index += 1
    results << row
  end
  results
end
