# @param {String} s
# @return {Integer}
def min_operations(s)
  s.chars
   .slice_when { |a, b| a === b }
   .partition
   .with_index { |_v, i| i.even? }
   .map { |cs| cs.sum(&:length) }
   .min
end
