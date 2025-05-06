# 2670. Find the Distinct Difference Array

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
# @return {Integer[]}
def distinct_difference_array(nums)
  len = nums.length
  return (1..len).map { |n| 2 * n - len } if nums.uniq === nums

  left_nums = []
  (1..len).map do |i|
    n = nums.shift
    left_nums << n unless left_nums.include?(n)

    left_nums.length - nums.uniq.length
  end
end
```
