class Solution {
  public boolean isAdjacentDiffAtMostTwo(String s) {
    int[] nums = new int[s.length()];
    for (int i = 0; i < s.length(); i++) {
      nums[i] = s.charAt(i) - '0';
    }

    for (int i = 1; i < nums.length; i++) {
      if (Math.abs(nums[i] - nums[i - 1]) > 2)
        return false;
    }

    return true;
  }
}
