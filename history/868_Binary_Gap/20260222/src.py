class Solution:
    def binaryGap(self, n: int) -> int:
        binary = bin(n)[2:]
        before_index = binary.index('1')

        result = 0
        while '1' in binary[before_index + 1:]:
            after_index = before_index + binary[before_index + 1:].index('1') + 1
            result = max(result, after_index - before_index)
            before_index = after_index

        return result
