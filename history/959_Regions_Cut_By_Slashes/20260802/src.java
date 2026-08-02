class Solution {
  DSU[][][] dsus;
  static final int TOP = 0;
  static final int LEFT = 1;
  static final int RIGHT = 2;
  static final int BOTTOM = 3;

  public int regionsBySlashes(String[] grid) {
    int columnLength = grid[0].length();
    char[][] chars = new char[grid.length][];
    dsus = new DSU[chars.length][columnLength][4];
    for (int i = 0; i < chars.length; i++) {
      chars[i] = grid[i].toCharArray();

      for (int j = 0; j < columnLength; j++) {
        for (int k = 0; k <= BOTTOM; k++) {
          dsus[i][j][k] = new DSU(i, j, k);
        }
      }
    }

    DSU currentRoot = fetchNextRoot();
    currentRoot.root = currentRoot;

    Deque<DSU> queue = new ArrayDeque<>();
    char c = chars[0][0];
    if (c != '\\')
      queue.push(dsus[0][0][LEFT]);
    if (c != '/')
      queue.push(dsus[0][0][RIGHT]);

    int result = 1;
    while (queue.size() != 0) {
      DSU current = queue.poll();
      current.root = currentRoot;
      DSU[] currentCell = dsus[current.rowIndex][current.colIndex];
      c = chars[current.rowIndex][current.colIndex];

      switch (current.position) {
        case TOP:
          if (c != '\\' && currentCell[LEFT].root == null)
            queue.push(currentCell[LEFT]);

          if (c != '/' && currentCell[RIGHT].root == null)
            queue.push(currentCell[RIGHT]);

          if (current.rowIndex != 0 && dsus[current.rowIndex - 1][current.colIndex][BOTTOM].root == null)
            queue.push(dsus[current.rowIndex - 1][current.colIndex][BOTTOM]);
          break;
        case LEFT:
          if (c != '\\' && currentCell[TOP].root == null)
            queue.push(currentCell[TOP]);

          if (c != '/' && currentCell[BOTTOM].root == null)
            queue.push(currentCell[BOTTOM]);

          if (current.colIndex != 0 && dsus[current.rowIndex][current.colIndex - 1][RIGHT].root == null)
            queue.push(dsus[current.rowIndex][current.colIndex - 1][RIGHT]);
          break;
        case RIGHT:
          if (c != '\\' && currentCell[BOTTOM].root == null)
            queue.push(currentCell[BOTTOM]);

          if (c != '/' && currentCell[TOP].root == null)
            queue.push(currentCell[TOP]);

          if (current.colIndex != columnLength - 1 && dsus[current.rowIndex][current.colIndex + 1][LEFT].root == null)
            queue.push(dsus[current.rowIndex][current.colIndex + 1][LEFT]);
          break;
        case BOTTOM:
          if (c != '\\' && currentCell[RIGHT].root == null)
            queue.push(currentCell[RIGHT]);

          if (c != '/' && currentCell[LEFT].root == null)
            queue.push(currentCell[LEFT]);

          if (current.rowIndex != chars.length - 1 && dsus[current.rowIndex + 1][current.colIndex][TOP].root == null)
            queue.push(dsus[current.rowIndex + 1][current.colIndex][TOP]);
          break;
      }

      if (queue.size() == 0) {
        currentRoot = fetchNextRoot();
        if (currentRoot == null)
          break;

        result++;
        queue.push(currentRoot);
      }
    }

    return result;
  }

  private DSU fetchNextRoot() {
    for (int i = 0; i < dsus.length; i++) {
      for (int j = 0; j < dsus[0].length; j++) {
        for (int k = 0; k < 4; k++) {
          if (dsus[i][j][k].root == null) {
            return dsus[i][j][k];
          }
        }
      }
    }

    return null;
  }
}

class DSU {
  int rowIndex;
  int colIndex;
  int position;
  DSU root = null;

  public DSU(int rowIndex, int colIndex, int position) {
    this.rowIndex = rowIndex;
    this.colIndex = colIndex;
    this.position = position;
  }
}
