# 1331. Rank Transform of an Array

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
# @param {Integer[]} arr
# @return {Integer[]}
def array_rank_transform(arr)
  ranking_hash = arr.uniq.sort.each_with_index.to_h
  arr.map { |a| ranking_hash[a] + 1 }
end
```
