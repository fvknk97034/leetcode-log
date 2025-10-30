# @param {Integer} n
# @return {Integer[]}
def decimal_representation(n)
  n.digits
   .map
   .with_index { |n, i| n === 0 ? nil : n * (10**i) }
   .compact
   .reverse
end
