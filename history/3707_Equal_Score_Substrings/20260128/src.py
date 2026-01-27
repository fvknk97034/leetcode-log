class Solution:
    def scoreBalance(self, s: str) -> bool:
        codes = [ord(c) - 96 for c in s]

        sum_1 = 0
        sum_2 = sum(codes)
        for i in range(len(s) - 1):
            sum_1 += codes[i]
            sum_2 -= codes[i]

            if sum_1 == sum_2:
                return True

        return False
