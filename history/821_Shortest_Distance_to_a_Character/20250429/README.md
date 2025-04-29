# 821. Shortest Distance to a Character

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
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
  c_indexes = s.chars.each_with_index.map { |v, i| v === c ? i : nil }.compact
  (0...s.length).map { |i| c_indexes.map { |j| (j - i).abs }.min }
end
```
