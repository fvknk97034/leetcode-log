# 1637. Widest Vertical Area Between Two Points Containing No Points

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
# @param {Integer[][]} points
# @return {Integer}
def max_width_of_vertical_area(points)
  x1, x2 = points.map(&:first).sort.each_cons(2).max_by { |x1, x2| x2 - x1 }
  x2 - x1
end
```
