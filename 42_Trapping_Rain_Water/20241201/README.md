# 42. Trapping Rain Water

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
# @param {Integer[]} height
# @return {Integer}
def trap(height)
  water_height = 0
  water_counter = 0
  len = height.length
  height.each_with_index do |h, i|
    if i + 2 < len && h >= water_height
      right_height = height[(i + 2)..-1].max
      water_height = h < right_height ? h : right_height
    end
    break if i + 1 >= len || height[(i + 1)..-1].max < water_height

    water_counter += water_height - h if water_height > h
  end
  water_counter
end
```
