# 2335. Minimum Amount of Time to Fill Cups

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
# @param {Integer[]} amount
# @return {Integer}
def fill_cups(amount)
  amount.filter!(&:positive?)
  return amount[0] if amount.length === 1
  return 0 if amount.length === 0

  amount.sort_by! { |a| -a }

  result = 0
  while amount[0]&.positive?
    filled_time = amount.length >= 3 ? amount[1] - amount[2] + 1 : amount[0]
    
    result += filled_time

    amount[0] -= filled_time
    amount[1] -= filled_time unless amount[1].nil?

    amount.filter!(&:positive?)
    break if amount.length === 0
    break result += amount[0] if amount.length === 1

    amount.sort_by! { |a| -a }
  end
  result
end
```
