# @param {String} sentence
# @return {String}
def to_goat_latin(sentence)
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  words = sentence.split.map.with_index(1) do |w, i|
    (vowels.include?(w[0]) ? w.concat('ma') : w[1..].concat(w[0]).concat('ma')).concat('a' * i)
  end

  words.join(' ')
end
