# @param {String} s
# @param {Integer} k
# @return {String}
def digit_sum(s, k)
  result = s
  while(result.length > k) do
    r = ""
    result.chars.map(&:to_i).each_slice(k) do |a|
      r << a.sum.to_s
    end
    result = r
  end
  result
end
