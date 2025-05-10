# @param {Integer} n
# @return {Integer}
def smallest_number(n)
  (1..10).each do |p|
    result = 2.pow(p) - 1
    return result if n <= result
  end
end
