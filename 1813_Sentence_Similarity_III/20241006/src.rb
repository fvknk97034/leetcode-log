# @param {String} sentence1
# @param {String} sentence2
# @return {Boolean}
def are_sentences_similar(sentence1, sentence2)
  return true if sentence1 === sentence2

  sub_array, full_array = sentence1.length < sentence2.length ? [sentence1.split, sentence2.split] : [sentence2.split, sentence1.split]

  while sub_array.first === full_array.first
    sub_array.shift
    full_array.shift
  end

  while sub_array.last === full_array.last
    sub_array.pop
    full_array.pop
  end

  sub_array.empty?
end
