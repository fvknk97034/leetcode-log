class Solution:
    def checkRecord(self, s: str) -> bool:
        counts = {
            'A': 0,
            'L': 0
        }
        for c in s:
            if c != 'L':
                counts['L'] = 0

            if c == 'P':
                continue

            counts[c] += 1
            if counts['A'] >= 2:
                return False

            if counts['L'] >= 3:
                return False

        return True
