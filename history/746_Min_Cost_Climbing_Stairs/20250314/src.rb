# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  dp = cost[0..1]
  min = dp.min
  cost[2..].each do |c|
    dp << min + c
    min = dp[-2..-1].min
  end
  min
end
