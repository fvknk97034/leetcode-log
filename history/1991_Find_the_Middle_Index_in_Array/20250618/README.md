# 1991. Find the Middle Index in Array

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
def find_middle_index(nums)
  (0...nums.length).find { |i| nums[...i].sum === nums[i + 1..].sum } || -1
end
```
