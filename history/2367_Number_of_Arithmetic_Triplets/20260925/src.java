class Solution {
  public int arithmeticTriplets(int[] nums, int diff) {
    int result = 0;
    for (int i = 0; i < nums.length - 2; i++) {
      if (contains(nums, nums[i] + diff) && contains(nums, nums[i] + diff * 2))
        result++;
    }

    return result;
  }

  private boolean contains(int[] nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == target)
        return true;
    }

    return false;
  }
}
