# @param {String} s
# @return {String}
def reverse_vowels(s)
  vowels = ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u']

  len = s.length
  last_index = -1
  (0...(len - 1)).each do |i|
    break if len + last_index  <= i
    next unless vowels.include?(s[i])

    j = s.rindex(/[AEIOUaeiou]/, last_index)
    break if j.nil?

    s[i], s[j] = [s[j], s[i]]
    last_index = j - len - 1
  end
  s
end
