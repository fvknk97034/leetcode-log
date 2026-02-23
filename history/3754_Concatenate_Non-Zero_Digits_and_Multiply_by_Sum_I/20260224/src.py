class Solution:
    def sumAndMultiply(self, n: int) -> int:
        x = '0'
        sum = 0
        for d in str(n):
            if d == '0':
                continue

            x += d
            sum += int(d)

        return int(x) * sum
