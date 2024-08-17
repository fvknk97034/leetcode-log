# 703. Kth Largest Element in a Stream

## Intuition

-

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```rs
struct KthLargest {
    nums: Vec<i32>,
    k: i32
}

/** 
 * `&self` means the method takes an immutable reference.
 * If you need a mutable reference, change it to `&mut self` instead.
 */
impl KthLargest {
    fn new(k: i32, mut nums: Vec<i32>) -> Self {
        nums.sort();
        nums.reverse();
        if nums.len() > k as usize {
            nums = nums[..(k as usize)].to_owned()
        } 
        return KthLargest { k: k, nums: nums };
    }
    
    fn add(&mut self, val: i32) -> i32 {
        let kth_num = self.kth_num();
        if val > kth_num && self.nums.len() == self.k as usize {
            self.nums.pop();
        }

        if val > kth_num || self.nums.len() < self.k as usize {
            self.nums.push(val);
            self.nums.sort();
            self.nums.reverse();
            return self.kth_num()
        }
        return kth_num
    }

    fn kth_num(&self) -> i32 {
        if self.nums.len() == 0 {
            return -9999
        }

        return *self.nums.last().unwrap();
    }
}

/**
 * Your KthLargest object will be instantiated and called as such:
 * let obj = KthLargest::new(k, nums);
 * let ret_1: i32 = obj.add(val);
 */
```
