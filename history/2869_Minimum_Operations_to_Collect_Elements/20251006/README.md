# 2869. Minimum Operations to Collect Elements

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
def min_operations(nums, k)
  targets = Set.new(1..k)
  collections = Set[]
  result = 0
  until targets.subset?(collections)
    collections << nums.pop
    result += 1
  end
  result
end```
