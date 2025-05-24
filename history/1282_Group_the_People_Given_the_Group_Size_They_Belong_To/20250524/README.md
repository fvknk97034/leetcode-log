# 1282. Group the People Given the Group Size They Belong To

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
# @param {Integer[]} group_sizes
# @return {Integer[][]}
def group_the_people(group_sizes)
  results = []
  groups = {}
  group_sizes.each_with_index do |p, i|
    groups[p] ||= []
    groups[p] << i

    next unless groups[p].length === p
    
    results << groups[p]
    groups[p] = []
  end
  results
end
```
