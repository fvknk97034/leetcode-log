class Solution:
    def sortArrayByParityII(self, nums: List[int]) -> List[int]:
        odds = [n for n in nums if n % 2 == 1]
        evens = [n for n in nums if n % 2 == 0]

        results = []
        for i in range(len(nums)):
            if i % 2 == 0:
                results.append(evens.pop())
                continue

            results.append(odds.pop())

        return results
