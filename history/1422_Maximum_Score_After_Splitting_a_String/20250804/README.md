# 1422. Maximum Score After Splitting a String

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
# @return {Integer}
def max_score(s)
  result = s.count('1')
  scores = []
  (1...s.length).each do |i|
    result = s[i - 1] === '1' ? result - 1 : result + 1

    scores << result
  end
  scores.max
end
```
