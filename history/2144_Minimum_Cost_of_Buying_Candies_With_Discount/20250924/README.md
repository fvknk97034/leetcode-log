# 2144. Minimum Cost of Buying Candies With Discount

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
# @param {Integer[]} cost
# @return {Integer}
def minimum_cost(cost)
  cost.sort!
  cost.reverse!

  cost.each_with_index.sum do |c, i|
    i % 3 === 2 ? 0 : c
  end
end
```
