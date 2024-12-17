# @param {String} sentence
# @return {Integer}
def count_valid_words(sentence)
  words  = sentence.split(' ').reject do |s|
    !(s =~ /[0-9]/).nil? ||
      s.count('-') > 1 ||
      (s.count('-') == 1 && (s =~ /[a-z]-[a-z]/).nil?) ||
      (s.match?(/[!,.]/) && !(s =~ /[!,.]$/)) ||
      s.count('!.,') > 1
  end.length
end
