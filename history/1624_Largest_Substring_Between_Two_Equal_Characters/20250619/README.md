# 1624. Largest Substring Between Two Equal Characters

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
def max_length_between_equal_characters(s)
  duplicate_chars = s.chars.tally.reject { |k, v| v === 1 }.keys
  return -1 if duplicate_chars === []

  result = -1
  duplicate_chars.each do |c|
    c1 = s.index(c)
    c2 = s.rindex(c)
    result = [result, c2 - c1 - 1].max
  end

  result
end
```
