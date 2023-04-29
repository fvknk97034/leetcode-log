# @param {String} s
# @param {Integer[]} distance
# @return {Boolean}
def check_distances(s, distance)
  alphabets = ('a'..'z').to_a

  s.each_char do |a|
    return false unless distance[alphabets.index(a)] == s.rindex(a) - s.index(a) - 1
  end
  true
end
