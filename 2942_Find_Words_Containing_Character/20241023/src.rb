# @param {String[]} words
# @param {Character} x
# @return {Integer[]}
def find_words_containing(words, x)
  results = []
  words.length.times do |i|
    results << i if words[i].include?(x)
  end
  results
end
