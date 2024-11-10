# @param {Integer} n
# @return {Integer}
def smallest_even_multiple(n)
  n % 2 == 0 ? n : n * 2
end
