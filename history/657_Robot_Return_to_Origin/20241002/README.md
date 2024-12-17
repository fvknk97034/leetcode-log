# 657. Robot Return to Origin

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
# @return {Boolean}
def judge_circle(moves)
  moves.count('R') == moves.count('L') && moves.count('U') == moves.count('D')
end
```
