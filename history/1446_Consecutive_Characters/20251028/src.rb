# @param {String} s
# @return {Integer}
def max_power(s)
  s.bytes.slice_when { |a, b| a != b }.inject(0) do |result, a|
    result = [result, a.length].max
  end
end
