# 2810. Faulty Keyboard

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 文字列を1文字ずつ捜査し、`i` でなければ結果の変数に文字を格納し `i` が出現したら結果の変数に格納した文字を反転させる
- `split('').reverse().join('')` はあまり効率が良くなさそうなため、`for` 文で対象文字列を配列へ変換せずに扱う

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ts
function finalString(s: string): string {
  let result: string = ''
  for (const c of s) {
    if (c === 'i') {
      result = reverseString(result)
    } else {
      result += c
    }
  }
  return result
};

function reverseString (s: string): string {
  let result: string = ''
  for (let i = -1; i >= -s.length; i--) {
    result += s.at(i)
  }
  return result
}
```
