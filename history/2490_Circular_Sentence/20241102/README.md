# 2490. Circular Sentence

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
# @return {Boolean}
def is_circular_sentence(sentence)
  words = sentence.split
  words << words[0]
  words.each_cons(2).all? { |a, b| a[-1] === b[0] }
end
```
