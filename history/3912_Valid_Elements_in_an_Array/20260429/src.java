class Solution {
  public List<Integer> findValidElements(int[] nums) {
    int[] leftMaxNums = new int[nums.length];
    int[] rightMaxNums = new int[nums.length];
    int max = nums[0];
    for(int i = 1; i < nums.length; i++) {
      leftMaxNums[i] = max;
      max = Math.max(nums[i], max);
    }

    max = nums[nums.length - 1];
    for(int i = nums.length - 2; i >= 0; i--) {
      rightMaxNums[i] = max;
      max = Math.max(nums[i], max);
    }
    
    List<Integer> results = new ArrayList<>();
    for(int i = 0; i < nums.length; i++) {
      if (nums[i] > Math.min(leftMaxNums[i], rightMaxNums[i])) {
        results.add(nums[i]);
        continue;
      }
    }
    
    return results;
  }
}
