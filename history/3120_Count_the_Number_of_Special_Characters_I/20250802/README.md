# 3120. Count the Number of Special Characters I

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
def number_of_special_chars(word)
  counts = word.chars.uniq.map(&:downcase).tally
  counts.count { |_k, v| v === 2 }
end
```
