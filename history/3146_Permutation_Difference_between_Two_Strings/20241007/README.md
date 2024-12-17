# 3146. Permutation Difference between Two Strings

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
# @param {String} t
# @return {Integer}
def find_permutation_difference(s, t)
  s.chars.inject(0) { |result, item| result + (s.index(item) - t.index(item)).abs }
end
```
