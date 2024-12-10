# 205. Isomorphic Strings

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
# @return {Boolean}
def is_isomorphic(s, t)
  hash = [s.chars, t.chars].transpose.to_h
  reverse_hash = [s.reverse.chars, t.reverse.chars].transpose.to_h

  hash.values.uniq.length === hash.length && hash === reverse_hash
end
```
