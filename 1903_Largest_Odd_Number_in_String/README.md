# 1903. Largest Odd Number in String

## Intuition

- 奇数文字列になる埼大部分文字列の抜き出しなので、文字列末尾が奇数になるように文字を切り取る

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```rb
# @param {String} num
# @return {String}
def largest_odd_number(num)
  len = num.length
  num[0...(len - (num.reverse.chars.find_index{ |n| n.to_i.odd? } || len))] || ''
end
```
