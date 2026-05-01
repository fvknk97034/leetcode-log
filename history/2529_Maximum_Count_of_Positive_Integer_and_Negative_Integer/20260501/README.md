# 2529. Maximum Count of Positive Integer and Negative Integer

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
  public int maximumCount(int[] nums) {
    int positiveCount = 0;
    int negativeCount = 0;
    for (int n: nums) {
      if (n > 0) {
        positiveCount++;
        continue;
      }

      if (n < 0) {
        negativeCount++;
      }
    }

    return Math.max(positiveCount, negativeCount);
  }
}
```
