# 2558. Take Gifts From the Richest Pile

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
# @param {Integer[]} gifts
# @param {Integer} k
# @return {Integer}
def pick_gifts(gifts, k)
  k.times do
    i = gifts.index(gifts.max)
    gifts[i] = Math.sqrt(gifts[i]).to_i
  end
  gifts.sum
end
```
