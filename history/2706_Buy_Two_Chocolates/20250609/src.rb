# @param {Integer[]} prices
# @param {Integer} money
# @return {Integer}
def buy_choco(prices, money)
  price = prices.min(2).sum
  price > money ? money : money - price
end
