# @param {Integer} n
# @return {Integer}
def pivot_integer(n)
  (n/2..n).find { |m| (1..m).sum === (m..n).sum } || -1
end
