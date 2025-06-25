# 2200. Find All K-Distant Indices in an Array

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
# @param {Integer} key
# @param {Integer} k
# @return {Integer[]}
def find_k_distant_indices(nums, key, k)
  indexes = (0...nums.length).to_a
  return indexes if nums.uniq.length === 1
  
  key_indexes = indexes.filter { |i| nums[i] === key }  
  indexes.filter do |i|
    (i - key_indexes.min_by { |j| (i - j).abs }).abs <= k
  end
end
```
