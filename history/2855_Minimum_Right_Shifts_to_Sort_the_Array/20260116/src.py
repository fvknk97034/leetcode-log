class Solution:
    def minimumRightShifts(self, nums: List[int]) -> int:
        i = next((i for i in range(len(nums) - 1, 0, -1) if nums[i - 1] > nums[i]), None)

        if i == None:
            return 0

        if nums[-1] > nums[0]:
            return -1

        if nums[:i] != sorted(nums[:i]):
            return -1

        if nums[i:] != sorted(nums[i:]):
            return -1

        return len(nums) - i
