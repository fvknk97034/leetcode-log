# 2833. Furthest Point From Origin

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
# @param {String} moves
# @return {Integer}
def furthest_distance_from_origin(moves)
  (moves.count('L') - moves.count('R')).abs + moves.count('_')
end
```
