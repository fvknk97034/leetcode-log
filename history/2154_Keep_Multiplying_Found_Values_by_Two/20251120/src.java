class Solution {
  public int findFinalValue(int[] nums, int original) {
    int result = original;
    while (containsValue(nums, result)) {
      result *= 2;
    }

    return result;
  }

  private boolean containsValue(int[] nums, int target) {
    for (int n : nums) {
      if (n == target)
        return true;
    }
    return false;
  }
}
