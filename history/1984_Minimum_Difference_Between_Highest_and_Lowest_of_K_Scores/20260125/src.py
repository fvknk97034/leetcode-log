class Solution:
    def minimumDifference(self, nums: List[int], k: int) -> int:
        if k == 1:
            return 0

        nums.sort()
        result = nums[k - 1] - nums[0]
        for i in range(k, len(nums)):
            result = min(nums[i] - nums[i - k + 1], result)

        return result
