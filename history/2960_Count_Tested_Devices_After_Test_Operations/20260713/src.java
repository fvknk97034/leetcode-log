class Solution {
  public int countTestedDevices(int[] batteryPercentages) {
    int result = 0;
    for (int n: batteryPercentages) {
      if (n <= result)
        continue;

      result++;
    }

    return result;
  }
}
