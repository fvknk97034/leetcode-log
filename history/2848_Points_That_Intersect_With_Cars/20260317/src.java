class Solution {
  public int numberOfPoints(List<List<Integer>> nums) {
    nums.sort((a, b) -> a.get(0) - b.get(0));

    int result = 0;
    int start = nums.get(0).get(0);
    int end = nums.get(0).get(1);
    for (List<Integer> pair: nums) {
      int s = pair.get(0);
      int e = pair.get(1);
      if (s > end) {
        result += end - start + 1;
        start = s;
      }
      if (e > end) end = e;
    }
    result += end - start + 1;

    return result;
  }
}
