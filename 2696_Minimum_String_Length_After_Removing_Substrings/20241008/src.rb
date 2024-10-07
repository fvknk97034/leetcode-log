# @param {String} s
# @return {Integer}
def min_length(s)
  while s.include?('AB') || s.include?('CD')
    s.gsub!('AB', '')
    s.gsub!('CD', '')
  end
  s.length
end
