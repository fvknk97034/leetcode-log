# 1945. Sum of Digits of String After Convert

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- アルファベットから数値への変換部と、数値の計算部に分ける
- アルファベットからの変換は最初の文字である `a` との差分から計算する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ts
function getLucky(s: string, k: number): number {
  // convert
  const aCharCode = 'a'.charCodeAt(0)
  let beforeString = s
    .split('')
    .map((v) => String(v.charCodeAt(0) - aCharCode + 1))
    .join('')

  // transform
  let result = 0
  for (let i = 0; i < k; i++) {
    result = 0
    for (let ts of beforeString) {
      result += Number(ts)
    }
    beforeString = String(result)
  }
  return result
};
```
