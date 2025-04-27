# @param {Integer[]} tickets
# @param {Integer} k
# @return {Integer}
def time_required_to_buy(tickets, k)
  tickets.each_with_index.sum do |t, i|
    next t if t < tickets[k]

    i <= k ? tickets[k] : tickets[k] - 1
  end
end
