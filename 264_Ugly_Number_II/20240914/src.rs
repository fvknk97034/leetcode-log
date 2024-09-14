use std::collections::HashMap;

impl Solution {
    pub fn nth_ugly_number(n: i32) -> i32 {
        if n < 7 {
            return n
        }

        let mut multiple_numbers = HashMap::from([
            (2, 4),
            (3, 3),
            (5, 2)
        ]);
        let mut ugly_numbers = vec![1, 2, 3, 4, 5, 6];
        while ugly_numbers.len() < n as usize {
            let mut candidate_ugly_numbers = vec![2 * multiple_numbers[&2], 3 * multiple_numbers[&3], 5 * multiple_numbers[&5]];
            let min: i32 = *candidate_ugly_numbers.iter().min().unwrap() as i32;
            &ugly_numbers.push(min);

            while candidate_ugly_numbers.iter().find(|n| **n == min).is_some() {
                let new_ugly_index = candidate_ugly_numbers.iter().position(|n| *n == min);
                let mut new_ugly_multiple_number = 2;
                match new_ugly_index {
                    Some(0) => new_ugly_multiple_number = 2,
                    Some(1) => new_ugly_multiple_number = 3,
                    Some(2) => new_ugly_multiple_number = 5,
                    None => todo!(),
                    Some(3_usize..) => todo!()
                }
                let multiplied_ugly_number_index = ugly_numbers.clone().into_iter().position(|x| x == multiple_numbers[&new_ugly_multiple_number]).unwrap();

                multiple_numbers.insert(new_ugly_multiple_number, ugly_numbers.clone()[(multiplied_ugly_number_index + 1) as usize]);
                candidate_ugly_numbers = vec![2 * multiple_numbers[&2], 3 * multiple_numbers[&3], 5 * multiple_numbers[&5]];
            }
        }
        ugly_numbers[ugly_numbers.len() - 1]
    }
}
