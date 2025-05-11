# @param {Integer[]} gifts
# @param {Integer} k
# @return {Integer}
def pick_gifts(gifts, k)
  k.times do
    i = gifts.index(gifts.max)
    gifts[i] = Math.sqrt(gifts[i]).to_i
  end
  gifts.sum
end
