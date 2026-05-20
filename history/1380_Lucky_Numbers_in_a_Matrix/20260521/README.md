# 1380. Lucky Numbers in a Matrix

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```Java
class Solution {
  public List<Integer> luckyNumbers(int[][] matrix) {
    List<Integer> results = new ArrayList<>();

    for (int i = 0; i < matrix.length; i++) {
      int min = matrix[i][0], minIndex = 0;
      for (int j = 1; j < matrix[i].length; j++) {
        if (matrix[i][j] < min) {
          min = matrix[i][j];
          minIndex = j;
        }
      }

      boolean isMax = true;
      for (int k = 0; k < matrix.length; k++) {
        if (matrix[k][minIndex] > min) {
          isMax = false;
          break;
        }
      }
      if (!isMax)
        continue;

      results.add(min);
    }

    return results;
  }
}
```
