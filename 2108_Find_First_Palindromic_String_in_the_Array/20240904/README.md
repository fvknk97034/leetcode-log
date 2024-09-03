# 2108. Find First Palindromic String in the Array

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
# @return {String}
def first_palindrome(words)
  palindromic_words = words.filter do |word|
    len = word.length
    half_end_index = len % 2 === 0 ? len / 2 - 1 : len / 2
    half_begun_index = len / 2

    return word if word[0..half_end_index] === word[half_begun_index..-1].reverse
  end
  
  ""
end
```
