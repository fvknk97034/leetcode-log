# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  s.chars.uniq.each do |c|
    return s.index(c) if s.count(c) === 1
  end
  -1
end
