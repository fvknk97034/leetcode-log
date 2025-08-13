# @param {Integer[][]} mat
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(mat, r, c)
  nums = mat.flatten
  return mat unless nums.length === r * c

  r.times.map { |i| nums[i * c, c] }
end
