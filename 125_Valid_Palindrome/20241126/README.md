# 125. Valid Palindrome

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
# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  joined_s = s.delete('^a-zA-Z0-9').downcase
  joined_s === joined_s.reverse
end
```
