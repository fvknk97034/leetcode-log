# @param {Integer[][]} dimensions
# @return {Integer}
def area_of_max_diagonal(dimensions)
  a, b = dimensions.max_by { |a, b| [a ** 2 + b ** 2, a * b] }
  a * b
end
