# 796. Rotate String

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
# @param {String} goal
# @return {Boolean}
def rotate_string(s, goal)
  return true if s === goal

  (1...s.length).each do |i|
    return true if goal === s[i..-1] + s[0...i]
  end
  false
end
```
