# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  hash = [s.chars, t.chars].transpose.to_h
  reverse_hash = [s.reverse.chars, t.reverse.chars].transpose.to_h

  hash.values.uniq.length === hash.length && hash === reverse_hash
end
