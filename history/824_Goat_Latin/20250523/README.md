# 824. Goat Latin

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
# @param {String} sentence
# @return {String}
def to_goat_latin(sentence)
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  words = sentence.split.map.with_index(1) do |w, i|
    (vowels.include?(w[0]) ? w.concat('ma') : w[1..].concat(w[0]).concat('ma')).concat('a' * i)
  end

  words.join(' ')
end
```
