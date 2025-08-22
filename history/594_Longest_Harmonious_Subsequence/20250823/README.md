# 594. Longest Harmonious Subsequence

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
# @param {Integer[]} nums
# @return {Integer}
def find_lhs(nums)
  return 0 if nums.uniq.length === 1

  counts = nums.tally
  counts.inject(0) do |result, key_value|
    k, v = key_value
    result = [v + counts[k + 1], result].max unless counts[k + 1].nil?
    result = [v + counts[k - 1], result].max unless counts[k - 1].nil?
    result
  end
end
```
