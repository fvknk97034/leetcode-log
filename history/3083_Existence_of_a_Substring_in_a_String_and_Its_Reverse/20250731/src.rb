# @param {String} s
# @return {Boolean}
def is_substring_present(s)
  reversed_s = s.reverse
  (0...s.length - 1).any? { |i| reversed_s.include?(s[i, 2]) }
end
