# 2047. Number of Valid Words in a Sentence

## Intuition

- 文字列を`split`で分割
- 条件を1つずつ書き下す

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {String} sentence
# @return {Integer}
def count_valid_words(sentence)
  words  = sentence.split(' ').reject do |s|
    !(s =~ /[0-9]/).nil? ||
      s.count('-') > 1 ||
      (s.count('-') == 1 && (s =~ /[a-z]-[a-z]/).nil?) ||
      (s.match?(/[!,.]/) && !(s =~ /[!,.]$/)) ||
      s.count('!.,') > 1
  end.length
end
```
