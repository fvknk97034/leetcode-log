# @param {String} s
# @return {Integer}
def count_good_substrings(s)
  s.chars.each_cons(3).count { |c| c.uniq.length === 3 }
end
