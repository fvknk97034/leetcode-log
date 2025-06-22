# 2138. Divide a String Into Groups of Size k

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
# @param {Integer} k
# @param {Character} fill
# @return {String[]}
def divide_string(s, k, fill)
  results = []
  while s.length >= k
    results << s[...k]
    s.slice!(...k)
  end
  results << s.concat(fill * (k - s.length)) unless s === ''
  results
end
```
