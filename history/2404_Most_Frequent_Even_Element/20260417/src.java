class Solution {
  public int mostFrequentEven(int[] nums) {
    Map<Integer, Integer> countMap = new HashMap<>();
    for (int n : nums) {
      if (n % 2 != 0)
        continue;

      countMap.put(n, countMap.getOrDefault(n, 0) + 1);
    }

    if (countMap.size() == 0)
      return -1;

    int result = 0;
    int max = 0;
    for (Map.Entry<Integer, Integer> entry : countMap.entrySet()) {
      int count = entry.getValue();
      if (count < max)
        continue;

      int num = entry.getKey();
      if (count == max && num > result)
        continue;

      max = count;
      result = num;
    }
    return result;
  }
}
