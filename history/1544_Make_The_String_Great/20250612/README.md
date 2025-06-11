# 1544. Make The String Great

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
def make_good(s)
  i = 0
  until i >= s.length - 1
    next i += 1 unless s[i].swapcase === s[i + 1]

    s = s.gsub(s[i, 2], '')
    i -= 1 unless i === 0
  end
  
  s
end
```
