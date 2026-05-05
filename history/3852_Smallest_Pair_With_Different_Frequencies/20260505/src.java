class Solution {
  public int[] minDistinctFreqPair(int[] nums) {
    int[] result = {-1, -1};
    if (nums.length <= 2)
      return result;

    int min = nums[0];
    Map<Integer, Integer> frequencyMap = new HashMap<>();
    for (int n: nums) {
      frequencyMap.merge(n, 1, Integer::sum);
      min = Math.min(min, n);
    }

    int count = frequencyMap.get(min);
    for (Map.Entry e: frequencyMap.entrySet()) {
      int key = (int)e.getKey();
      if (key == min || (int)e.getValue() == count)
        continue;

      if (result[0] == -1) {
        result[0] = min;
        result[1] = key;
        continue;
      }

      result[1] = Math.min(result[1], key);
    }
    return result;
  }
}
