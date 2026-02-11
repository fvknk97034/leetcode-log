class Solution:
    def incremovableSubarrayCount(self, nums: List[int]) -> int:
        l = len(nums)
        result = 0
        for i in range(l):
            pre_array = nums[:i]
            if not self.isSorted(pre_array):
                break

            for j in range(i, l):
                sub_array = nums[j + 1:]

                if not self.isSorted(sub_array):
                    continue

                if len(pre_array) > 0 and len(sub_array) and pre_array[-1] >= sub_array[0]:
                    continue

                result += 1

        return result

    def isSorted(self, array: List[int]) -> int:
        for i in range(1, len(array)):
            if array[i - 1] >= array[i]:
                return False

        return True
