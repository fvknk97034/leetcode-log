# 2932. Maximum Strong Pair XOR I

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 条件を満たさなければ早めに `continue` する
- 条件を満たした場合、従来の値と新しい値のうち大きい値を結果として保持する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```rust
impl Solution {
    pub fn maximum_strong_pair_xor(nums: Vec<i32>) -> i32 {
        let mut max_xor_num = 0;
        let len = nums.len();
        
        for i in 0..len {
            let n_i = nums[i];

            for j in i..len {
                let n_j = nums[j];
                if ((n_i - n_j).abs() > n_i.min(n_j)) {
                    continue;
                }

                max_xor_num = max_xor_num.max(n_i ^ n_j);
            }
        }
        max_xor_num
    }
}```
