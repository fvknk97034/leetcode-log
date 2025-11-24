class Solution:
    def nearestValidPoint(self, x: int, y: int, points: List[List[int]]) -> int:
        distance = math.inf
        result = -1

        for i, p in enumerate(points):
            if (p[0] != x and p[1] != y):
                continue

            d = abs(x - p[0]) + abs(y - p[1])
            if (d >= distance):
                continue

            distance = d
            result = i

        return result
