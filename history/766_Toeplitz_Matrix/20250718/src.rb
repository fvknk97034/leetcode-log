# @param {Integer[][]} matrix
# @return {Boolean}
def is_toeplitz_matrix(matrix)
  len = matrix.length
  (0...(len - 1)).all? do |i|
    matrix[i][0...-1] === matrix[i + 1][1..]
  end
end
