# 746. Min Cost Climbing Stairs

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
def min_cost_climbing_stairs(cost)
  dp = cost[0..1]
  min = dp.min
  cost[2..].each do |c|
    dp << min + c
    min = dp[-2..-1].min
  end
  min
end
```
