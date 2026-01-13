class Solution:
    def largestEven(self, s: str) -> str:
        return s[:s.rfind("2") + 1]
