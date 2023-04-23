# 1342. Number of Steps to Reduce a Number to Zero

## Intuition

- 繰り返し回数が不定かつ終了条件が明確なため、`while`を使用

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
  i = 0
  while num > 0 do
    if num.even?
      num /= 2
    else
      num -= 1
    end

    i += 1
  end
  i
end
```
