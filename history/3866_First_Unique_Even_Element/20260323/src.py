class Solution:
    def firstUniqueEven(self, nums: list[int]) -> int:
        return next((n for n in nums if n % 2 == 0 and nums.count(n) == 1), -1)
