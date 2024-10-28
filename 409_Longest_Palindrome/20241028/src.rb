# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  s_counts = s.chars.tally.values
  s_counts.sum { _1 / 2 * 2 } + (s_counts.find(&:odd?) ? 1 : 0)
end
