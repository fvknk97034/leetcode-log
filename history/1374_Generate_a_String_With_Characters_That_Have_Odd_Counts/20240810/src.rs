impl Solution {
    pub fn generate_the_string(n: i32) -> String {
        if n % 2 == 0 {
            return "a".repeat((n - 1) as usize) + "b"
        } else {
            return "a".repeat(n as usize)
        }
    }
}
