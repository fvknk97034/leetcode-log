# @param {Integer[]} ranks
# @param {Character[]} suits
# @return {String}
def best_hand(ranks, suits)
  return 'Flush' if suits.uniq.length === 1

  rank_counts = ranks.tally.values
  return 'Three of a Kind' if rank_counts.max >= 3
  return 'Pair' if rank_counts.include?(2)

  'High Card'
end
