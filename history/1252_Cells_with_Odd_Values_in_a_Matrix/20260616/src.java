class Solution {
  public int oddCells(int m, int n, int[][] indices) {
    boolean[] rowIsOdd = new boolean[m];
    boolean[] columnIsOdd = new boolean[n];
    for (int[] location: indices) {
      rowIsOdd[location[0]] = !rowIsOdd[location[0]];
      columnIsOdd[location[1]] = !columnIsOdd[location[1]];
    }

    int rowOddCount = 0;
    int columnOddCount = 0;
    for (boolean rc: rowIsOdd) {
      if (rc)
        rowOddCount++;
    }

    for (boolean cc: columnIsOdd) {
      if (cc)
        columnOddCount++;
    }

    return rowOddCount * (n - columnOddCount) + (m - rowOddCount) * columnOddCount;
  }
}
