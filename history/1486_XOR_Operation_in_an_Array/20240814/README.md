# 1486. XOR Operation in an Array

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- `for` 文で指定の数値のビット演算をした結果を `result` に上書きし、返却する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ts
function xorOperation(n: number, start: number): number {
  let result = start
  for (let i = 1; i < n; i++) {
    result ^= start + 2 * i
  }
  return result
};
```
