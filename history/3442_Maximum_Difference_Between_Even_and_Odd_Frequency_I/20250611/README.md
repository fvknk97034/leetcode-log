# 3442. Maximum Difference Between Even and Odd Frequency I

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
def max_difference(s)
  odds, evens = s.chars.tally.values.partition(&:odd?)

  odds.max - evens.min
end
```
