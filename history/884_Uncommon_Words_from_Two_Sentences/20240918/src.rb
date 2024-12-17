# @param {String} s1
# @param {String} s2
# @return {String[]}
def uncommon_from_sentences(s1, s2)
  concat_array = s1.split(' ') + s2.split(' ')
  concat_array.filter{ |s| concat_array.count(s) === 1  }
end
