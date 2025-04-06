# 3498. Reverse Degree of a String

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
def reverse_degree(s)
  s.bytes.each_with_index.sum { |b, i| (123 - b) * (i + 1) }
end
```
