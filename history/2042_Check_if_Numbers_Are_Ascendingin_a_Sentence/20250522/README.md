# 2042. Check if Numbers Are Ascending in a Sentence

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
def are_numbers_ascending(s)
  numbers = s.split.filter { |t| t =~ /\A[0-9]+\z/ }.map(&:to_i)
  numbers == numbers.sort && numbers == numbers.uniq
end
```
