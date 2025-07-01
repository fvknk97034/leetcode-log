# 3330. Find the Original Typed String I

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
# @param {String} word
# @return {Integer}
def possible_string_count(word)
  words = word.chars.slice_when { |w1, w2| w1 != w2 }.map(&:length)
  words.sum - (words.length - 1)
end
```
