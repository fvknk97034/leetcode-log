# 1758. Minimum Changes To Make Alternating Binary String

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
# @param {String} s
# @return {Integer}
def min_operations(s)
  s.chars
   .slice_when { |a, b| a === b }
   .partition
   .with_index { |_v, i| i.even? }
   .map { |cs| cs.sum(&:length) }
   .min
end
```
