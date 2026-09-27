class Solution {
  public int[] numberGame(int[] nums) {
    Queue<Integer> sortedNums = new PriorityQueue<>();
    for (int num: nums)
      sortedNums.add(num);

    int[] results = new int[nums.length];
    for (int i = 0; i < results.length; i += 2) {
      results[i + 1] = sortedNums.poll();
      results[i] = sortedNums.poll();
    }

    return results;
  }
}
