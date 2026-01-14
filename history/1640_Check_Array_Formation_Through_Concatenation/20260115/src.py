class Solution:
    def canFormArray(self, arr: List[int], pieces: List[List[int]]) -> bool:
        for p in pieces:
            l = len(p)
            isIncluded = False
            for i in range(len(arr) - l + 1):
                if p != arr[i:i + l]:
                    continue

                isIncluded = True
                break

            if not isIncluded:
                return False

        return True
