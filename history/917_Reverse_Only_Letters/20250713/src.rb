# @param {String} s
# @return {String}
def reverse_only_letters(s)
  alphabets = ('a'..'z').to_a.concat(('A'..'Z').to_a)
  chars = s.scan(/[a-zA-Z]/)

  (0...s.length).map { |i| alphabets.include?(s[i]) ? chars.pop : s[i] }.join
end
