# 290. Word Pattern

## Intuition

-

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, string)
  chars = string.split
  return false unless pattern.length === chars.length

  correspondence_table = [chars, pattern.split('')].transpose
  correspondence_hash = {}
  correspondence_table.each do |p, s|
    return false if !correspondence_hash[p].nil? && correspondence_hash[p] != s

    return false if correspondence_hash[p].nil? && correspondence_hash.values.include?(s)

    correspondence_hash[p] = s
  end
  true
end
```
