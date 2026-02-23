# 1752. Check if Array Is Sorted and Rotated

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```Python
class Solution:
    def check(self, nums: List[int]) -> bool:
        for _ in nums:
            if self.isSorted(nums):
                return True

            n = nums.pop()
            nums.insert(0, n)
            
        return False

    def isSorted(self, nums: List[int]) -> bool:
        for i in range(1, len(nums)):
            if nums[i - 1] > nums[i]:
                return False
            
        return True
```
