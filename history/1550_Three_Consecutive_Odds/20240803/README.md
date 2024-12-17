# 1550. Three Consecutive Odds

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 要素を順に捜査し、奇数であればカウントを1加算、偶数であればカウントをリセットする
- カウントが3になればその時点で `true` を返却し、ならなければ `false` を返却する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```rust
impl Solution {
    pub fn three_consecutive_odds(arr: Vec<i32>) -> bool {
        let mut count = 0;
        for a in arr.iter() {
            if a % 2 == 1 {
                count += 1;
            } else {
                count = 0;
            }
            if count == 3 {
                return true;
            }
        }
        return false;
    }
}
```
