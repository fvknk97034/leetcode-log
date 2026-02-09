class Solution:
    def countMonobit(self, n: int) -> int:
        result = 0
        while 2 ** result - 1 <= n:
            result += 1

        return result
