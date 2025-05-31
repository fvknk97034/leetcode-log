# @param {Integer[][]} mat
# @return {Integer[]}
def row_and_maximum_ones(mat)
  index = 0
  max_line = mat[0]
  mat.each_with_index do |m, i|
    next if m.count(1) <= max_line.count(1)

    max_line = m
    index = i
  end

  [index, max_line.count(1)]
end
