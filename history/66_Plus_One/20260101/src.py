class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        index = len(digits) - 1
        while True:
            if index >= 0:
                print(digits[index])
                if digits[index] == 9:
                    digits[index] = 0
                    index -= 1
                    continue

                digits[index] += 1
                return digits
            else:
                digits.insert(0, 1)
                return digits

        return digits
