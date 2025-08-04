# 3105. Longest Strictly Increasing or Strictly Decreasing Subarray

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
def longest_monotonic_subarray(nums)
  return 1 if nums.length === 1

  result = 1
  l = nums[0] === nums[1] ? 1 : 2
                  
  (2...nums.length).each do |i|
    if nums[i - 1] === nums[i]
      result = [result, l].max
      l = 1
      next 
    end

    unless nums[i - 2] < nums[i - 1] === nums[i - 1] < nums[i]
      result = [result, l].max
      l = 2
      next
    end

    l += 1 
  end
  result = [result, l].max
end
```
