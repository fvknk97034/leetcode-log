class Solution {
  public int countValidSelections(int[] nums) {
    int result = 0;
    int leftSum = 0;
    int rightSum = Arrays.stream(nums).sum();
    for (int curr = 0; curr < nums.length; curr++) {
      int n = nums[curr];
      if (n != 0) {
        leftSum += n;
        rightSum -= n;
        continue;
      }

      if (leftSum + 1 < rightSum || leftSum - 1 > rightSum)
        continue;

      result += leftSum == rightSum ? 2 : 1;
    }

    return result;
  }
}
