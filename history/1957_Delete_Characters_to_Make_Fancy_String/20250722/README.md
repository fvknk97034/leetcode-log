# 1957. Delete Characters to Make Fancy String

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
def make_fancy_string(s)
  count = 0
  chars = []
  (0...s.length).each do |i|
    count = chars[-1] === s[i] ? count + 1 : 1
    chars << s[i] if count < 3
  end
  chars.join
end
```
