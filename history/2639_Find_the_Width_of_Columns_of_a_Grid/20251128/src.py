class Solution:
    def findColumnWidth(self, grid: List[List[int]]) -> List[int]:
        results = [-1] * len(grid[0])
        for row in grid:
            for i, cell in enumerate(row):
                results[i] = max(results[i], len(str(cell)))

        return results
