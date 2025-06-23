# @param {Integer[]} colors
# @return {Integer}
def number_of_alternating_groups(colors)
  colors.concat(colors[0, 2]).each_cons(3).count do |c1, c2, c3|
    next false if c1 === c2

    c1 === c3
  end
end
