# 2161. Partition Array According to Given Pivot

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
# @param {Integer} pivot
# @return {Integer[]}
def pivot_array(nums, pivot)
  lowers = []
  equals = []
  highers = []

  nums.each do |n|
    next lowers << n if n < pivot
    next equals << n if n === pivot

    highers << n
  end

  lowers.concat(equals).concat(highers)
end
```
