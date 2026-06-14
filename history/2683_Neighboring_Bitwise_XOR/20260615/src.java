class Solution {
  public boolean doesValidArrayExist(int[] derived) {
    int xorSum = 0;
    for (int d: derived)
      xorSum ^= d;

    return xorSum == 0;
  }
}
