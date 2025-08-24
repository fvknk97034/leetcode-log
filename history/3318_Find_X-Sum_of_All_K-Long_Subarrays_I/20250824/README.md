# 3318. Find X-Sum of All K-Long Subarrays I

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
# @param {Integer} x
# @return {Integer[]}
def find_x_sum(nums, k, x)
  (0..(nums.length - k)).map do |i|
    nums[i..(i + k - 1)].sort_by { |k| -k }
                        .tally
                        .sort_by { |k, v| -v }[0, x]
                        .sum { |k, v| k * v }
  end
end
```
