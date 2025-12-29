class Solution:
    def getCommon(self, nums1: List[int], nums2: List[int]) -> int:
        commons = set(nums1) & set(nums2)

        return min(commons) if commons else -1
