# 3238. Find the Number of Winning Players

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
# @param {Integer} n
# @param {Integer[][]} pick
# @return {Integer}
def winning_player_count(n, pick)
  counts = {}
  pick.each do |player, color|
    counts[player] ||= []
    counts[player][color] ||= 0
    counts[player][color] += 1
  end
  counts.each do |player, color_count|
    counts[player] = color_count.compact.max
  end
  counts.count { |k, v| k < v }
end
```
