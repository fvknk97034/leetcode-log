# 1897. Redistribute Characters to Make All Strings Equal

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
# @param {String[]} words
# @return {Boolean}
def make_equal(words)
  len = words.length
  return true if len === 1
  
  concat_words = ''
  words.each { |w| concat_words << w }
  concat_words.chars.tally.values.all? { |v| v % len === 0 }
end
```
