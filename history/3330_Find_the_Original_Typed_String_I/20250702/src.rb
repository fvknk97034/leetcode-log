# @param {String} word
# @return {Integer}
def possible_string_count(word)
  words = word.chars.slice_when { |w1, w2| w1 != w2 }.map(&:length)
  words.sum - (words.length - 1)
end
