# 1672. Richest Customer Wealth

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
# @param {Integer[][]} accounts
# @return {Integer}
def maximum_wealth(accounts)
  accounts.flat_map{ |a| a.sum }.max
end
```
