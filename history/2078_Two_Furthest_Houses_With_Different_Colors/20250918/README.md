# 2078. Two Furthest Houses With Different Colors

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
# @param {Integer[]} colors
# @return {Integer}
def max_distance(colors)
  [
    colors.rindex { |c| c != colors[0] },
    colors.length - colors.index { |c| c != colors[-1] } - 1
  ].max
end
```
