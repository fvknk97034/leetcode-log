# 1078. Occurrences After Bigram

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
# @param {String} text
# @param {String} first
# @param {String} second
# @return {String[]}
def find_ocurrences(text, first, second)
  result = []
  text.split.each_cons(3) { result << _3 if _1 === first && _2 === second }
  result
end```
