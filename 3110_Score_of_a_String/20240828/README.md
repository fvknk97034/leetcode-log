# 3110. Score of a String

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
def score_of_string(s)
  result = 0
  s.chars.each_cons(2) do |c1, c2|
    result += (c1.ord - c2.ord).abs
  end
  result
end
```
