# 507. Perfect Number

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 約数は平方根以下にあるので、探索範囲を平方根以下に限定する
- 引数を平方根で割った値も同じく約数なので合計に加える

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {Integer} num
# @return {Boolean}
def check_perfect_number(num)
  return false if num == 1

  sum = 0
  (1..Math.sqrt(num).floor).each do |n|
    next if num % n != 0
    
    sum += n
    sum += num / n if n > 1 && n != num / n
  end

  sum == num
end
```
