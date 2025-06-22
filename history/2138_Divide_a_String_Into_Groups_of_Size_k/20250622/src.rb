# @param {String} s
# @param {Integer} k
# @param {Character} fill
# @return {String[]}
def divide_string(s, k, fill)
  results = []
  while s.length >= k
    results << s[...k]
    s.slice!(...k)
  end
  results << s.concat(fill * (k - s.length)) unless s === ''
  results
end
