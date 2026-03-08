class Solution:
    def getMinDistance(self, nums: List[int], target: int, start: int) -> int:
        if target == nums[start]:
            return 0

        result = len(nums)
        for i, n in enumerate(nums):
            if n != target:
                continue

            distance = abs(i - start)
            if distance < result:
                result = distance

        return result
