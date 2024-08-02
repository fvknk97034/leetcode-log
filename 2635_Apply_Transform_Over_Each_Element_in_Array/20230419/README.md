# 2635. Apply Transform Over Each Element in Array

## Intuition

- 配列を加工して配列を返却するので、`forEach`の中で配列に計算結果を格納
- インデックスを使用するケースがあるので、第2引数を使用

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```javascript
/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var map = function(arr, fn) {
  const result = []
  arr.forEach((a, i) => result.push(fn(a, i)))
  return result
};
```
