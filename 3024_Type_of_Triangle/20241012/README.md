# 3024. Type of Triangle

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
# @return {String}
def triangle_type(nums)
  nums.sort!
  return 'none' if nums[0, 2].sum <= nums[-1]

  case nums.uniq.length
  when 1
    return 'equilateral'
  when 2
    return 'isosceles'
  when 3
    return 'scalene'
  end
end
```
