# 1768. Merge Strings Alternately

## Intuition

- 文字列を順に結合するため、一度配列に変換して`zip`で結合後、文字列に戻す

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity
- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  word1.chars.fill(nil, word1.length...word2.length).zip(word2.chars).flatten.join('')
end
```
