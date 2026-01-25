# The guess API is already defined for you.
# @param num, your guess
# @return -1 if num is higher than the picked number
#          1 if num is lower than the picked number
#          otherwise return 0
# def guess(num: int) -> int:

class Solution:
    def guessNumber(self, n: int, move: int = None) -> int:
        result = guess(n)
        if result == 0:
            return n

        left = 1
        right = n

        while True:
            middle = int((left + right) / 2)
            match guess(middle):
                case 0:
                    return middle
                case -1:
                    right = middle - 1
                case 1:
                    left = middle + 1
