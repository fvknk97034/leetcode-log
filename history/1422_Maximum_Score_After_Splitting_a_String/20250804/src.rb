# @param {String} s
# @return {Integer}
def max_score(s)
  result = s.count('1')
  scores = []
  (1...s.length).each do |i|
    result = s[i - 1] === '1' ? result - 1 : result + 1

    scores << result
  end
  scores.max
end
