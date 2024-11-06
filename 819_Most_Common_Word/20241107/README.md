# 819. Most Common Word

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
# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)
  (paragraph.downcase.gsub(/[^0-9a-z ]/, '\& ').gsub(/[^0-9a-z ]/, '').split - banned).tally.max { |x, y| x[1] <=> y[1] }[0]
end
```
