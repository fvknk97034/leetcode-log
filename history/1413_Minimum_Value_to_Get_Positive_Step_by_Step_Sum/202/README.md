# 1413. Minimum Value to Get Positive Step by Step Sum

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
def min_start_value(nums)
  result = 1
  nums.inject(result) do |sum, n|
    sum += n
    next sum if sum >= 1
    
    result = result - sum + 1
    sum = 1
  end
  result
end
```
