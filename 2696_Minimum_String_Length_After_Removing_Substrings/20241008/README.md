# 2696. Minimum String Length After Removing Substrings

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
def min_length(s)
  while s.include?('AB') || s.include?('CD')
    s.gsub!('AB', '')
    s.gsub!('CD', '')
  end
  s.length
end
```
