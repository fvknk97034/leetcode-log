# 387. First Unique Character in a String

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
def first_uniq_char(s)
  s.chars.uniq.each do |c|
    return s.index(c) if s.count(c) === 1
  end
  -1
end
```
