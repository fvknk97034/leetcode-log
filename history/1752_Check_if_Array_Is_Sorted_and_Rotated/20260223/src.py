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
