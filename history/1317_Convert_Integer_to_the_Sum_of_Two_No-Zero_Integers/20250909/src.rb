# @param {Integer} n
# @return {Integer[]}
def get_no_zero_integers(n)
  (1..n - 1).each do |a|
    next if a.digits.include?(0)

    b = n - a
    next if b.digits.include?(0)

    return [a, b]
  end
end
