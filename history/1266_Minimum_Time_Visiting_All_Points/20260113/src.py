class Solution:
    def minTimeToVisitAllPoints(self, points: List[List[int]]) -> int:
        result = 0
        for i in range(1, len(points)):
            p1 = points[i - 1]
            p2 = points[i]
            result += max(abs(p1[0] - p2[0]), abs(p1[1] - p2[1]))

        return result
