# 1995. Count Special Quadruplets

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
def count_quadruplets(nums)
  len = nums.count
  (0..len - 4).sum do |a|
    (a + 1..len - 3).sum do |b|
      (b + 1..len - 2).sum do |c|
        nums[c + 1..].count(nums[a] + nums[b] + nums[c])
      end
    end
  end
end
```
