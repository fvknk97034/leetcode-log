class Solution:
    def residuePrefixes(self, s: str) -> int:
        chars = set()
        result = 0
        for i in range(len(s)):
            chars.add(s[i])
            if len(chars) == int((i + 1) % 3):
                result += 1

        return result
