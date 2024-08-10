impl Solution {
    pub fn rearrange_characters(s: String, target: String) -> i32 {
        let mut count_min = s.len();
        for c in target.chars() {
            let count = s.match_indices(c).count() / target.match_indices(c).count();
            if count < count_min {
                count_min = count
            }
        }
        count_min as i32
    }
}
