# @param {Integer[]} colors
# @return {Integer}
def max_distance(colors)
  [
    colors.rindex { |c| c != colors[0] },
    colors.length - colors.index { |c| c != colors[-1] } - 1
  ].max
end
