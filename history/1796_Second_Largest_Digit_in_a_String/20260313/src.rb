class Solution:
    def secondHighest(self, s: str) -> int:
        hasDigits = [False for _ in range(10)]
        for c in s:
            if c.isdigit():
                hasDigits[int(c)] = True

        count = 0
        for i in range(9, -1, -1):
            if not hasDigits[i]:
                continue

            count += 1
            if count == 2:
                return i

        return -1
