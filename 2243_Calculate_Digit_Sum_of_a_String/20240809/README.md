# 2243. Calculate Digit Sum of a String

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 文字列を配列にして3文字ずつ切り分けて処理することを指定文字数まで繰り返す

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```rb
# @param {String} s
# @param {Integer} k
# @return {String}
def digit_sum(s, k)
  result = s
  while(result.length > k) do
    r = ""
    result.chars.map(&:to_i).each_slice(k) do |a|
      r << a.sum.to_s
    end
    result = r
  end
  result
end
```
