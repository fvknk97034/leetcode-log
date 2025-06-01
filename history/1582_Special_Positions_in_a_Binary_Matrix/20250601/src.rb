# @param {Integer[][]} mat
# @return {Integer}
def num_special(mat)
  m_len = mat.length
  n_len = mat[0].length
  (0...m_len).sum do |i|
    next 0 if mat[i].sum > 1

    (0...n_len).count do |j|
      next false if mat[i][j] === 0

      mat.map { |r| r[j] }.sum === 1
    end
  end
end
