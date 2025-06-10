# @param {String} s
# @return {Integer}
def max_difference(s)
  odds, evens = s.chars.tally.values.partition(&:odd?)

  odds.max - evens.min
end
