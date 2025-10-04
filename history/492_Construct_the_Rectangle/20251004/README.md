# 492. Construct the Rectangle

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
# @param {Integer} area
# @return {Integer[]}
def construct_rectangle(area)
  w = Math.sqrt(area).floor
  until area % w === 0
    w -= 1
  end
  [area / w, w]
end
```
