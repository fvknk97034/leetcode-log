# @param {Integer[]} cost
# @return {Integer}
def minimum_cost(cost)
  cost.sort!
  cost.reverse!

  cost.each_with_index.sum do |c, i|
    i % 3 === 2 ? 0 : c
  end
end
