# 896. Monotonic Array

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
# @return {Boolean}
def is_monotonic(nums)
  is_determined = false
  is_increasing = false
  before_n = nums[0]
  nums[1..].each do |n|
    if !is_determined && before_n != n
      is_determined = true
      is_increasing = before_n < n
      before_n = n
      next
    end

    return false if is_increasing && before_n > n    
    return false if !is_increasing && before_n < n    

    before_n = n
  end
  true
end
```
