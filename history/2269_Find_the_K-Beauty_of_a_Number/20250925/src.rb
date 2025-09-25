# @param {Integer} num
# @param {Integer} k
# @return {Integer}
def divisor_substrings(num, k)
  num.digits.reverse.each_cons(k).count do |c|
    !c.all? { |d| d === 0 } && num % c.join.to_i === 0
  end
end
