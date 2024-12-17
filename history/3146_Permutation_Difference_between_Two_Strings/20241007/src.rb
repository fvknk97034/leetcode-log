# @param {String} s
# @param {String} t
# @return {Integer}
def find_permutation_difference(s, t)
  s.chars.inject(0) { |result, item| result + (s.index(item) - t.index(item)).abs }
end
