# @param {String} s
# @return {Integer}
def score_of_string(s)
  result = 0
  s.chars.each_cons(2) do |c1, c2|
    result += (c1.ord - c2.ord).abs
  end
  result
end
