# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def common_factors(a, b)
  min = [a, b].min

  (1..min).count { |n| a % n === 0 && b % n === 0 }
end
