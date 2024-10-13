# 242. Valid Anagram

## Intuition

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
def is_anagram(s, t)
  s.bytes.tally == t.bytes.tally
end
```
