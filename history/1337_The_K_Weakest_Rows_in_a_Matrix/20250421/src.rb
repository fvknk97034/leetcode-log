# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
  mat.each_with_index.min(k).map { |m| m[-1] }
end
