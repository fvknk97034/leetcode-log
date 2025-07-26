# @param {Integer} k
# @return {Character}
def kth_character(k)
  word = 'a'

  base_words = ('a'..'z').to_a
  changing_words = base_words.zip(base_words[1..] << base_words[0]).to_h

  while word[k - 1].nil?
    tmp = word[0, k - word.length]
    tmp.each_char { |w| word << changing_words[w] }
  end

  word[k - 1]
end
