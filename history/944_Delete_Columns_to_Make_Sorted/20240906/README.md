# 944. Delete Columns to Make Sorted

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
# @param {String[]} strs
# @return {Integer}
def min_deletion_size(strs)
  strs.map(&:bytes).transpose.count{ |v| v != v.sort }
end
```
