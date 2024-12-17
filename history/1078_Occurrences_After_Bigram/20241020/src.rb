# @param {String} text
# @param {String} first
# @param {String} second
# @return {String[]}
def find_ocurrences(text, first, second)
  result = []
  text.split.each_cons(3) { result << _3 if _1 === first && _2 === second }
  result
end
