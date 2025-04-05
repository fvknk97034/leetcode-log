# 49. Group Anagrams

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
# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  strs.group_by { |s| s.chars.sort }.values
end
```
