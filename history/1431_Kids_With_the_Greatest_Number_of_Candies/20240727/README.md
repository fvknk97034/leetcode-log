# 1431. Kids With the Greatest Number of Candies

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 追加の飴をもらった際に、飴をもらう前の配列内の最大値より大きくなるか比較する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
  candies.map{ |c| c + extra_candies >= candies.max }
end
```
