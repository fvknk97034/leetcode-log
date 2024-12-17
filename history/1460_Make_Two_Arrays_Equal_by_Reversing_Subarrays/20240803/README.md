# 1460. Make Two Arrays Equal by Reversing Subarrays

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 要素に含まれる数値とその個数が一致すれば条件を満たす配列となる
- 上記の場合、ソートすれば一致する配列になるため、ソートしてから比較した結果を返却する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```rust
impl Solution {
    pub fn can_be_equal(mut target: Vec<i32>, mut arr: Vec<i32>) -> bool {
        target.sort();
        arr.sort();
        target == arr
    }
}
```
