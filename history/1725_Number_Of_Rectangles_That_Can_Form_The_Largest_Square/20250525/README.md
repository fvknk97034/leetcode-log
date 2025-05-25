# 1725. Number Of Rectangles That Can Form The Largest Square

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
# @param {Integer[][]} rectangles
# @return {Integer}
def count_good_rectangles(rectangles)
  l = rectangles.max_by { |r| r.min }.min
  rectangles.count { |r| r.min === l }
end
```
