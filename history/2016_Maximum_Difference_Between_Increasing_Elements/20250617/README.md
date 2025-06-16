# 2016. Maximum Difference Between Increasing Elements

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
def maximum_difference(nums)
  return -1 if nums.sort.reverse === nums

  result = 0
  min_num = nums[0]
  nums[1..].each do |n|
    next min_num = [min_num, n].min if n <= min_num

    result = [result, n - min_num].max
    min_num = [min_num, n].min
  end
  result
end
```
