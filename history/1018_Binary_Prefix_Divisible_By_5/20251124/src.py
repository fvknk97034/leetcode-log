class Solution:
    def prefixesDivBy5(self, nums: List[int]) -> List[bool]:
        results = []

        decimal = 0
        before_result = True
        for i in range(len(nums)):
            decimal *= 2

            if (nums[i] == 0):
                results.append(before_result)
                continue

            decimal += 1
            before_result = decimal % 5 == 0
            results.append(before_result)

        return results
