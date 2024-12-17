# 724. Find Pivot Index

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
def pivot_index(nums)
  prefix_sum = 0
  suffix_sum = nums.sum
  nums.each_with_index do |n, i|
    suffix_sum -= n
    return i if prefix_sum === suffix_sum

    prefix_sum += n
  end
  -1
end
```
