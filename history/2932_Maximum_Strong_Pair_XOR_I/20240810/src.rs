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
}
