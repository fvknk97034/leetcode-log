# 2073. Time Needed to Buy Tickets

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
# @param {Integer[]} tickets
# @param {Integer} k
# @return {Integer}
def time_required_to_buy(tickets, k)
  tickets.each_with_index.sum do |t, i|
    next t if t < tickets[k]

    i <= k ? tickets[k] : tickets[k] - 1
  end
end
```
