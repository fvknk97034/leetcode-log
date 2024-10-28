# 409. Longest Palindrome

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
# @return {Integer}
def longest_palindrome(s)
  s_counts = s.chars.tally.values
  s_counts.sum { _1 / 2 * 2 } + (s_counts.find(&:odd?) ? 1 : 0)
end
```
