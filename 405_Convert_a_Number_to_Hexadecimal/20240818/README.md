# 405. Convert a Number to Hexadecimal

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 数値と16進数の文字の対応表を見ながら結果を作成していく
- 16で割ったあまりを変換することを繰り返す
- 2の補数法で表現した場合、負の数は全ビットを1埋めである -1 から順に数値が減っていくため、ビット内で表現可能な最大値 + 1に `num` を足した値を正の数と同じように処理していく

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```go
func toHex(num int) string {
    to_hex_map := map[int]string{
        0: "0",
        1: "1",
        2: "2",
        3: "3",
        4: "4",
        5: "5",
        6: "6",
        7: "7",
        8: "8",
        9: "9",
        10: "a",
        11: "b",
        12: "c",
        13: "d",
        14: "e",
        15: "f",
    }

    if num < 0 {
        num += int(math.Pow(2, 32))
    }

    result := ""
    for {
        result = to_hex_map[num % 16] + result
        if num < 16 {
            break
        }
        num /= 16
    }
    return result
}
```
