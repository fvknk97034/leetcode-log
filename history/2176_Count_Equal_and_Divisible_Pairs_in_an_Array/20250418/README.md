# 2176. Count Equal and Divisible Pairs in an Array

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
# @return {Integer}
def count_pairs(nums, k)
  len = nums.length
  (0...(len - 1)).sum do |i|
    ((i + 1)...len).count { |j| (i * j) % k === 0 && nums[i] === nums[j] }
  end
end
```
