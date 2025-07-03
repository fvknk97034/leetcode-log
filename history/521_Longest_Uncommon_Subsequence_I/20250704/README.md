# 521. Longest Uncommon Subsequence I

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
# @param {String} a
# @param {String} b
# @return {Integer}
def find_lu_slength(a, b)
  return -1 if a === b
  return b.length if b.length > a.length

  a.length
end```
