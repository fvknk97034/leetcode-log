class Solution {
  public int largestSumAfterKNegations(int[] nums, int k) {
    PriorityQueue<Integer> pq = new PriorityQueue<>();
    for (int n: nums)
      pq.add(n);

    for (int _count = 0; _count < k; _count++) {
      int min = pq.poll();
      if (min == 0) break;
      pq.add(-min);
    }

    int result = 0;
    for (int n: pq)
      result += n;

    return result;
  }
}
