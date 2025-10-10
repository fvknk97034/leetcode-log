# 2347. Best Poker Hand

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
# @param {Integer[]} ranks
# @param {Character[]} suits
# @return {String}
def best_hand(ranks, suits)
  return 'Flush' if suits.uniq.length === 1

  rank_counts = ranks.tally.values
  return 'Three of a Kind' if rank_counts.max >= 3
  return 'Pair' if rank_counts.include?(2)
  
  'High Card'
end
```
