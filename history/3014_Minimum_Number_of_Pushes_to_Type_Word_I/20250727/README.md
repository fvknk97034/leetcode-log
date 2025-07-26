# 3014. Minimum Number of Pushes to Type Word I

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
# @param {String} word
# @return {Integer}
def minimum_pushes(word)
  result = 0

  len = word.length
  until len <= 0
    result += len
    len -= 8
  end

  result
end
```
