# 1374. Generate a String With Characters That Have Odd Counts

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 与えられた文字が奇数であれば適当な1文字のみの文字列、偶数であれば適当な文字を `n - 1`文字と別の文字1文字の文字列を返却する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```rust
impl Solution {
    pub fn generate_the_string(n: i32) -> String {
        if n % 2 == 0 {
            return "a".repeat((n - 1) as usize) + "b"
        } else {
            return "a".repeat(n as usize)
        }
    }
}
```
