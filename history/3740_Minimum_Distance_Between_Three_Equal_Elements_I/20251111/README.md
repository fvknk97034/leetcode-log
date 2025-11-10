# 3740. Minimum Distance Between Three Equal Elements I

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
def minimum_distance(nums)
  return -1 if nums.length < 3

  indices = {}
  nums.each_with_index do |n, i|
    indices[n] ||= []
    indices[n] << i
  end

  indices.filter! { |_k, v| v.length >= 3 }
  return -1 if indices === {}

  result = 300
  indices.each_value do |value|
    value.combination(3).each do |i, j, k|
      return 4 if i === j - 1 && j === k - 1

      sum = 2 * k - 2 * i
      result = sum if sum < result
    end
  end
  result
end

```
