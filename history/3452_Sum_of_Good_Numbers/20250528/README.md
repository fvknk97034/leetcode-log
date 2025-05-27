# 3452. Sum of Good Numbers

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
def sum_of_good_numbers(nums, k)
  result = 0
  len = nums.length
  nums.each_with_index do |n, i|
    next if i >= k && n <= nums[i - k]
    next if i + k < len && n <= nums[i + k]

    result += n
  end

  result
end
```
