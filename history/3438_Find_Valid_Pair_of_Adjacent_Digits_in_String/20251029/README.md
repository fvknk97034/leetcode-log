# 3438. Find Valid Pair of Adjacent Digits in String

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
def find_valid_pair(s)
  chars = s.chars
  counts = chars.tally
  targets = chars.each_cons(2).find do |a, b|
    next if a === b

    counts[a] === a.to_i && counts[b] === b.to_i
  end
  targets&.join || ''
end
```
