# @param {Integer} n
# @return {Integer}
def count_largest_group(n)
  targets = (1..n).group_by { |num| num.digits.sum }.values
  max_len = targets.map { |v| v.length }.max
  targets.count { |v| v.length === max_len }
end
