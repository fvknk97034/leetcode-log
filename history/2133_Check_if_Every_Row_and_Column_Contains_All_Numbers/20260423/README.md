# 2133. Check if Every Row and Column Contains All Numbers

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
  public boolean checkValid(int[][] matrix) {
    int n = matrix.length;
    for (int i = 0; i < n; i++) {
      if (!isRowValid(matrix[i]))
        return false;

      int[] column = new int[n];
      for (int j = 0; j < n; j++)
        column[j] = matrix[j][i];

      if (!isRowValid(column))
        return false;
    }

    return true;
  }

  private boolean isRowValid(int[] row) {
    boolean[] hasNum = new boolean[row.length];
    for (int i = 0; i < row.length; i++) {
      if (hasNum[row[i] - 1])
        return false;

      hasNum[row[i] - 1] = true;
    }

    return true;
  }
}
```
