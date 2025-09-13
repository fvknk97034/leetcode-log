# 2610. Convert an Array Into a 2D Array With Conditions

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
# @return {Integer[][]}
def find_matrix(nums)
  results = []

  num_counts = nums.tally
  until num_counts === {}
    results << num_counts.keys

    num_counts.reject! { |k, v| v === 1 }
    num_counts.each { |k, _v| num_counts[k] -= 1 }
  end
  results
end
```
