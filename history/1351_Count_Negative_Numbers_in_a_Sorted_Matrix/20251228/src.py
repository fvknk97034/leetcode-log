class Solution:
    def countNegatives(self, grid: List[List[int]]) -> int:
        result = 0
        for row in grid:
            result += sum(cell < 0 for cell in row)

        return result
