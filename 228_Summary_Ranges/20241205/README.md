# 228. Summary Ranges

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
# @return {String[]}
def summary_ranges(nums)
  nums.chunk_while { |n, m| n + 1 === m }.map { |v| v.length === 1 ? v[0].to_s : "#{v[0]}->#{v[-1]}" }
end
```
