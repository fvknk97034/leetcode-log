class Solution:
    def findShortestSubArray(self, nums: List[int]) -> int:
        counts = Counter(nums)
        max_count = max(counts.values())
        if max_count == 1:
            return 1

        max_nums = [k for k, v in counts.items() if v == max_count]

        result = len(nums)
        for n in max_nums:
            left = -1
            right = -1
            for i in range(len(nums)):
                if nums[i] != n:
                    continue

                if left == -1:
                    left = i
                    continue

                right = i

            result = min(result, right - left + 1)

        return result
