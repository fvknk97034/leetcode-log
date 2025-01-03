# @param {Integer} start
# @param {Integer} goal
# @return {Integer}
def min_bit_flips(start, goal)
  start_bit = start.to_s(2)
  goal_bit = goal.to_s(2)
  max_len = [start_bit.length, goal_bit.length].max

  start_bit = start_bit.rjust(max_len, padding = '0')
  goal_bit = goal_bit.rjust(max_len, padding = '0')
  (0...max_len).count { |i| start_bit[i] != goal_bit[i] }
end
