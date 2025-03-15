# 238. Product of Array Except Self

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
def product_except_self(nums)
  results = []

  prefix = 1
  nums.each do |n|
    results << prefix
    prefix *= n
  end

  suffix = 1
  len = nums.length
  nums.reverse.each_with_index do |n, i|
    results[len - 1 - i] *= suffix
    suffix *= n
  end

  results
end
```
