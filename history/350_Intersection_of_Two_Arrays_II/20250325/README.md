# 350. Intersection of Two Arrays II

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
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  results = []
  nums1.each do |n|
    i = nums2.index(n)
    next if i.nil?

    results << n
    nums2.delete_at(i)
  end

  results
end
```
