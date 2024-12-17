# 500. Keyboard Row

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- ワードが各列のキーをワードの文字列帳だけ繰り返して繰り返してできる文字列か判定する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {String[]} words
# @return {String[]}
def find_words(words)
  keyboard_rows = ['qwertyuiopQWERTYUIOP', 'asdfghjklASDFGHJKL', 'zxcvbnmZXCVBNM']
  words.filter { |w| keyboard_rows.any? { |k| !/[#{k}]{#{w.length}}/.match(w).nil? } }
end
```
