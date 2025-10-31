# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  s_counts = s.chars.tally
  t_counts = t.chars.tally
  t_counts.each do |k, v|
    return k unless s_counts[k] === v
  end
end
