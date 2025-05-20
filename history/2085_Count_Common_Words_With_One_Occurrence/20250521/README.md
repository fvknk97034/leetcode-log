# 2085. Count Common Words With One Occurrence

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
# @param {String[]} words1
# @param {String[]} words2
# @return {Integer}
def count_words(words1, words2)
  common_words1 = words1.tally.filter { |_k, v| v === 1 }.keys
  common_words2 = words2.tally.filter { |_k, v| v === 1 }.keys
  (common_words1 & common_words2).length
end
```
