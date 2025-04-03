# 2874. Maximum Value of an Ordered Triplet II

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
def maximum_triplet_value(nums)
  result = 0
  len = nums.length

  max_1 = nums[0]
  max_2 = nums[2..].max
  (1...(len - 1)).each do |i|
    n = nums[i]
    result = [result, (max_1 - n) * max_2].max

    max_1 = [max_1, n].max
    max_2 = nums[(i + 2)..].max if max_2 === nums[i + 1]
  end

  result
end
```
