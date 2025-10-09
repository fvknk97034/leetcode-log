# @param {String[]} words
# @return {String}
def odd_string(words)
  words.group_by { |w| w.bytes.each_cons(2).map { |a, b| b - a } }
       .find { |k, v| v.length === 1 }[-1][0]
end
