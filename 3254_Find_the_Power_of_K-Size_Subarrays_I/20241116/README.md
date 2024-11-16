# 3254. Find the Power of K-Size Subarrays I

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
# @return {Integer[]}
def results_array(nums, k)
  nums.each_cons(k).map { |v| power_of_array?(v) ? v[-1] : -1 }
end

def power_of_array?(values)
  len = values.length
  values[0] + len - 1 === values[-1] && values.uniq === values && values === values.sort
end
```
