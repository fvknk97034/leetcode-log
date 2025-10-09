# 2451. Odd String Difference

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
# @param {String[]} words
# @return {String}
def odd_string(words)
  words.group_by { |w| w.bytes.each_cons(2).map { |a, b| b - a } }
       .find { |k, v| v.length === 1 }[-1][0]
end
```
