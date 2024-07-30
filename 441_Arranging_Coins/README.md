# 441. Arranging Coins

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 1段あげるたびに `n` から減らす数を増やし、`n` よりも減らす数の方が大きくなったら終了する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  row = 1
  while (n > row) do
    n -= row
    row += 1 if n > row
  end
  row
end
```
