class Solution:
    def convertToBase7(self, num: int) -> str:
        if num == 0:
            return '0'

        bits = []
        is_negative = num < 0
        num = abs(num)
        while num != 0:
            bits.append(str(num % 7))
            num = int(num / 7)

        if is_negative:
            bits.append('-')

        return ''.join(reversed(bits))
