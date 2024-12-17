# @param {Integer} num
# @return {Integer}
def find_complement(num)
  result = ''
  num.to_s(2).each_char { |n| result << (n == '0' ? '1' : '0') }
  result.to_i(2)
end
