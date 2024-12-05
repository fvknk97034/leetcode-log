# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  index = 0
  s.each_char do |c|
    tmp = t[index..]
    return false until tmp.include?(c)

    index += tmp.index(c) + 1
  end
  true
end
