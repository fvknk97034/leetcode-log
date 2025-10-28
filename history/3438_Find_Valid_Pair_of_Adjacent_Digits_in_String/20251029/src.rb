# @param {String} s
# @return {String}
def find_valid_pair(s)
  chars = s.chars
  counts = chars.tally
  targets = chars.each_cons(2).find do |a, b|
    next if a === b

    counts[a] === a.to_i && counts[b] === b.to_i
  end
  targets&.join || ''
end
