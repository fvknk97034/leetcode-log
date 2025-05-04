# @param {Integer[][]} dominoes
# @return {Integer}
def num_equiv_domino_pairs(dominoes)
  dominoes.map(&:sort).tally.sum { |_k, v| v * (v - 1) / 2 }
end
