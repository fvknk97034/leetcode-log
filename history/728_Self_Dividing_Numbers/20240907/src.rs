impl Solution {
    pub fn self_dividing_numbers(left: i32, right: i32) -> Vec<i32> {
        let mut char_left = left.to_string();
        let mut char_right = right.to_string();
        let mut result = vec![];

        for n in left..=right {
            if n < 10 {
                result.push(n);
                continue
            }
            let mut char_n = n.to_string();

            if char_n.contains("0") {
                continue
            }

            let mut is_finished = false;
            let len = char_n.len();

            for i in 0..len {
                let div = char_n.chars().nth(i as usize).unwrap() as i32 - 48;
                if n % div != 0 {
                    break
                }
                if i == (len - 1) {
                    is_finished = true;
                }
            }
            if is_finished {
                result.push(n);
            }
        }

        result
    }
}
