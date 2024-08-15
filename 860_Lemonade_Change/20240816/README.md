# 860. Lemonade Change

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 連想配列にレジのお金を格納する
- $5 であれば釣りはいらないので次の処理に進行する
- $10、$20 であれば必ず $5 の釣りが必要になるため、$5 を持っていなければその時点で `false` を返却する
- $20 であれば、$10 * 1 + $5 * 1 、もしくは $5 * 3 の組み合わせがあり、$5 は $10 への釣りにも使用するため $10 を優先的に使って釣りを返す

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ts
function lemonadeChange(bills: number[]): boolean {
  const cashier = {
    5: 0,
    10: 0,
    20: 0
  }

  for (const bill of bills) {
    cashier[bill] += 1

    if (bill == 5) continue

    // bill >= 10
    if (cashier[5] == 0) return false

    if (bill == 10) {
      cashier[5] -= 1
      continue
    }

    // bill == 20
    if (cashier[5] < 3 && cashier[10] == 0) return false
    
    if (cashier[10] > 0) {
      cashier[10] -= 1
      cashier[5] -= 1
      
      continue
    }

    if (cashier[5] < 3) return false
    else cashier[5] -= 3
  }

  return true
};
```
