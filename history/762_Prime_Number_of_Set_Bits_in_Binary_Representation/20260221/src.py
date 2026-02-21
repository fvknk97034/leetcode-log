class Solution(object):
    def countPrimeSetBits(self, left, right):
        """
        :type left: int
        :type right: int
        :rtype: int
        """
        primeCounts = [2]

        for n in range(3, right.bit_length()):
            if not any(n % d == 0 for d in primeCounts):
                primeCounts.append(n)

        result = 0
        for n in range(left, right + 1):
            if bin(n).count('1') in primeCounts:
                result += 1

        return result
