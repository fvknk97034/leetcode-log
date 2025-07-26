# @param {String} word
# @return {Integer}
def minimum_pushes(word)
  result = 0

  len = word.length
  until len <= 0
    result += len
    len -= 8
  end

  result
end
