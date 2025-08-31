# @param {Integer} n
# @return {Boolean}
def has_alternating_bits(n)
  n.to_s(2).chars.each_cons(2).none? { |a, b| a === b }
end
