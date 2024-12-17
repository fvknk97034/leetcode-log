# 3216. Lexicographically Smallest String After a Swap

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
def get_smallest_string(s)
  index = 0
  s.chars.each_cons(2) do |n, m|
    if n.to_i % 2 === m.to_i % 2 && n > m
      s[index] = m
      s[index + 1] = n
      break
    end
    
    index += 1
    next
  end
  s
end
```
