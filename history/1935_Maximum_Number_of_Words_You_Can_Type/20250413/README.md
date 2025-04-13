# 1935. Maximum Number of Words You Can Type

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
# @param {String} text
# @param {String} broken_letters
# @return {Integer}
def can_be_typed_words(text, broken_letters)
  broken_chars = broken_letters.chars
  text.split(' ').count { |w| broken_chars.none? { |b| w.include?(b) } }
end
```
