# 3314. Construct the Minimum Bitwise Array I

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
def min_bitwise_array(nums)
  nums.map do |n|
    (1...n).find { |a| a | (a + 1) === n } || -1
  end
end
```
