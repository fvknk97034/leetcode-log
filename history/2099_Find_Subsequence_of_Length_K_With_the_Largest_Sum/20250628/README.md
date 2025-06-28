# 2099. Find Subsequence of Length K With the Largest Sum

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
# @param {Integer} k
# @return {Integer[]}
def max_subsequence(nums, k)
  (0...nums.length).zip(nums)
                   .max_by(k) { |k, v| v }
                   .sort_by { |k, v| k }
                   .map(&:last)
end
```
