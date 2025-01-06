# 121. Best Time to Buy and Sell Stock

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
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
```
