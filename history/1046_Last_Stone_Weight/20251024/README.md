# 1046. Last Stone Weight

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
# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  until stones.length <= 1
    heavy_stone, light_stone = stones.max(2)

    light_index = stones.index(light_stone)
    stones.delete_at(light_index)

    heavy_index = stones.index(heavy_stone)    
    next stones.delete_at(heavy_index) if heavy_stone === light_stone

    stones[heavy_index] -= light_stone
  end
  stones[0] || 0
end
```
