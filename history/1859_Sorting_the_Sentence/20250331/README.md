# 1859. Sorting the Sentence

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
# @return {String}
def sort_sentence(s)
  s.split(' ').sort_by { _1[-1] }.map(&:chop).join(' ')
end
```
