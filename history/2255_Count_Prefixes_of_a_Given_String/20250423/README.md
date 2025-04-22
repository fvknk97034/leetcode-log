# 2255. Count Prefixes of a Given String

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
# @param {String} s
# @return {Integer}
def count_prefixes(words, s)
  words.count { |w| s.start_with?(w) }
end
```
