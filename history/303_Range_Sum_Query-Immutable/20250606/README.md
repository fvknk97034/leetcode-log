# 303. Range Sum Query - Immutable

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
class NumArray
=begin
  :type nums: Integer[]
=end
  def initialize(nums)
    prefix = 0
    @cache = nums.map { |n| prefix += n }
  end

=begin
  :type left: Integer
  :type right: Integer
  :rtype: Integer
=end
  def sum_range(left, right)
    return @cache[right] if left === 0

    @cache[right] - @cache[left - 1]
  end
end

# Your NumArray object will be instantiated and called as such:
# obj = NumArray.new(nums)
# param_1 = obj.sum_range(left, right)
```
