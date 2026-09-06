class Solution {
  public int findClosestNumber(int[] nums) {
    int result = Integer.MAX_VALUE;
    int absResult = result;

    for (int num: nums) {
      int absNum = Math.abs(num);
      if (absNum > absResult)
        continue;

      if (absNum < absResult) {
        result = num;
        absResult = absNum;
        continue;
      }

      result = Math.max(num, result);
    }

    return result;
  }
}
