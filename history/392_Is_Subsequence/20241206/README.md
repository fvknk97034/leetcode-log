# 392. Is Subsequence

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
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  index = 0
  s.each_char do |c|
    tmp = t[index..]
    return false until tmp.include?(c)

    index += tmp.index(c) + 1
  end
  true
end
```
