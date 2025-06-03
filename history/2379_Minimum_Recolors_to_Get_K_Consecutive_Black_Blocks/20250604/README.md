# 2379. Minimum Recolors to Get K Consecutive Black Blocks

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
# @param {String} blocks
# @param {Integer} k
# @return {Integer}
def minimum_recolors(blocks, k)
  (0..(blocks.length - k)).inject(blocks.length) do |result, i|
    [result, blocks[i, k].count('W')].min
  end
end
```
