# 1876. Substrings of Size Three with Distinct Characters

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
def count_good_substrings(s)
  s.chars.each_cons(3).count { |c| c.uniq.length === 3 }
end
```
