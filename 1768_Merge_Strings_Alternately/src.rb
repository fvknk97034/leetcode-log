# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  word1.chars.fill(nil, word1.length...word2.length).zip(word2.chars).flatten.join('')
end
