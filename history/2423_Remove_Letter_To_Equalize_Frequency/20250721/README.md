# 2423. Remove Letter To Equalize Frequency

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
# @return {Boolean}
def equal_frequency(word)
  counts = word.chars.tally.values
  return true if counts.length === 1
  return true if counts.all? { |c| c === 1 }
  return false unless counts.uniq.length === 2

  min, max = counts.uniq.sort
  return true if min === 1 && counts.count(min) === 1

  max - 1 === min && counts.count(max) === 1
end
```
