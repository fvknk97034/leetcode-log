class Solution:
    def minimumAbsDifference(self, arr: List[int]) -> List[List[int]]:
        arr.sort()

        min_diff = arr[1] - arr[0]
        results = [[arr[0], arr[1]]]
        for i in range(2, len(arr)):
            diff = arr[i] - arr[i - 1]
            if diff > min_diff:
                continue

            if diff == min_diff:
                results.append([arr[i - 1], arr[i]])
                continue

            min_diff = diff
            results = [[arr[i - 1], arr[i]]]

        return results
