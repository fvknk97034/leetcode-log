class Solution:
    def constructTransformedArray(self, nums: List[int]) -> List[int]:
        return [num if num == 0 else nums[(i + num) % len(nums)] for i, num in enumerate(nums)]
