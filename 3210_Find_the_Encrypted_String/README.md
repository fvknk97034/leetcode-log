# 3210. Find the Encrypted String

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 文字列の文字数とずらす文字数が一致なら変更なしなのでそのまま返却する
- 異なる場合、その文字の何文字目かを示す `i` にずらす文字数 `k` を足した値から、はみ出た文字数を調整（=`-((i + k) / len).floor * len`）する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {String} s
# @param {Integer} k
# @return {String}
def get_encrypted_string(s, k)
  len = s.length
  return s if k == len

  array = s.each_char.to_a
  decrypted_s = ''
  len.times do |i|
    n = i + k - ((i + k) / len).floor * len
    decrypted_s << array[n]
  end
  decrypted_s
end
```
