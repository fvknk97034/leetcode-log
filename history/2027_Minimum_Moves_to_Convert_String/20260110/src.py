class Solution:
    def minimumMoves(self, s: str) -> int:
        result = 0

        index = s.find('X')
        while index >= 0:
            result += 1

            index += 3
            index = s.find('X', index)

        return result
