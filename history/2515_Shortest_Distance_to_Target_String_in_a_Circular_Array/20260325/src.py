class Solution:
    def closestTarget(self, words: List[str], target: str, startIndex: int) -> int:
        l = len(words)
        for result in range(max(startIndex, l - startIndex)):
            if (target in [words[(startIndex + result) % l], words[(startIndex - result) % l]]):
                return result

        return -1
