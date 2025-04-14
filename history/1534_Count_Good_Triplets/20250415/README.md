# 1534. Count Good Triplets

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
# @param {Integer[]} arr
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def count_good_triplets(arr, a, b, c)
  arr.combination(3).count do |x, y, z|
    (x - y).abs <= a && (y - z).abs <= b && (x - z).abs <= c
  end
end
```
