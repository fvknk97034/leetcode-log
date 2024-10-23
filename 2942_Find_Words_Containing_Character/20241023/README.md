# 2942. Find Words Containing Character

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
# @param {Character} x
# @return {Integer[]}
def find_words_containing(words, x)
  results = []
  words.length.times do |i|
    results << i if words[i].include?(x)
  end
  results
end
```
