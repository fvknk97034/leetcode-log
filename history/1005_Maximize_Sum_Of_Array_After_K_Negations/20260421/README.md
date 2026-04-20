# 1005. Maximize Sum Of Array After K Negations

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```Java
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
```
