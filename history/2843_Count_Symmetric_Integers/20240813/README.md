# 2843. Count Symmetric Integers

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 数値を順に捜査していく
- 数値を各桁の値を要素とする配列に格納し、半分に分割した上で総和が同じであればカウントを増やす

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```js
function countSymmetricIntegers(low: number, high: number): number {
  let count = 0
  for (let n = low; n <= high; n++) {
    const a = String(n).split('').map(v => Number(v))

    if (a.length % 2 === 1) continue

    const halfDigits = Math.floor(a.length / 2)
    const n1 = a.slice(0, halfDigits)
    const n2 = a.slice(-halfDigits)

    if (n1.reduce((sum, element) => sum + element, 0) === n2.reduce((sum, element) => sum + element, 0)) {
      count++
    }
  }
  return count
};
```
