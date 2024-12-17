# 2652. Sum Multiples

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 直感的に書くなら、`(3..n).to_a.filter { |v| v % 3 == 0 || v % 5 == 0 || v % 7 == 0 }.sum` の方がわかりやすそうだが、配列の分のメモリ確保や捜査が2回走ることによる実行時間の長さの関係で、`while` 文で回していく方式をとった
- `1`, `2`は捜査しても意味がないので `3`から捜査していく
- `3`の判定が一番引っかかるので、一番最初に判定する


## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```rb
# @param {Integer} n
# @return {Integer}
def sum_of_multiples(n)
  target = 3
  result = 0
  while (target <= n) do
    result += target if target % 3 == 0 || target % 5 == 0 || target % 7 == 0
    target += 1
  end
  result
end
```
