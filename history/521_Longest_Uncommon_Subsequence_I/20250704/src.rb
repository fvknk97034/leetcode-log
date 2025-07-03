# @param {String} a
# @param {String} b
# @return {Integer}
def find_lu_slength(a, b)
  return -1 if a === b
  return b.length if b.length > a.length

  a.length
end
