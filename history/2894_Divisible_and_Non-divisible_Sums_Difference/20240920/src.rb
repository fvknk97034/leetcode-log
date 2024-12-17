# @param {Integer} n
# @param {Integer} m
# @return {Integer}
def difference_of_sums(n, m)
  (1..n).sum{ |a| a % m == 0 ? -a : a }
end
