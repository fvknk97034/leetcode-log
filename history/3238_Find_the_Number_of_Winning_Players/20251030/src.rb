# @param {Integer} n
# @param {Integer[][]} pick
# @return {Integer}
def winning_player_count(n, pick)
  counts = {}
  pick.each do |player, color|
    counts[player] ||= []
    counts[player][color] ||= 0
    counts[player][color] += 1
  end
  counts.each do |player, color_count|
    counts[player] = color_count.compact.max
  end
  counts.count { |k, v| k < v }
end
