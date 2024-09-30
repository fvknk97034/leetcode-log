# 1512. Number of Good Pairs

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
def num_identical_pairs(nums)
  count = 0
  len = nums.length

  (0...(len - 1)).each do |i|
    ((i + 1)...len).each do |j|
      count += 1 if nums[i] === nums[j]
    end
  end

  count
end
```
