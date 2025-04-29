# 806. Number of Lines To Write String

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
# @param {Integer[]} widths
# @param {String} s
# @return {Integer[]}
def number_of_lines(widths, s)
  max_width = 100
  pixels = ('a'..'z').zip(widths).to_h

  line_count = 1
  line_width = 0
  s.each_char do |c|
    added_sub_count = line_width + pixels[c]

    next line_width = added_sub_count if added_sub_count <= max_width

    line_count += 1
    line_width = pixels[c]
  end
  [line_count, line_width]
end
```
