# 2053. Kth Distinct String in an Array

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 値と登場回数のハッシュを `tally` で作成し、登場回数が1のキーの中で `k` 番目のキーを返却する
  - 配列内での文字の登場順序は維持されているらしい
- `nil` が返ってきたら `""` を返却する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {String[]} arr
# @param {Integer} k
# @return {String}
def kth_distinct(arr, k)
  arr.tally.filter { |_key, value| value == 1 }.keys[k - 1] || "" 
end
```
