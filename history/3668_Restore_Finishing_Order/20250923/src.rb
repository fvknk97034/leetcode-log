# @param {Integer[]} order
# @param {Integer[]} friends
# @return {Integer[]}
def recover_order(order, friends)
  order.filter { |o| friends.include?(o) }
end
