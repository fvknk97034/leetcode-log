# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profit = 0
  min_price = prices[0]

  prices.each do |p|
    min_price = [p, min_price].min
    profit = [p - min_price, profit].max
  end
  profit
end
