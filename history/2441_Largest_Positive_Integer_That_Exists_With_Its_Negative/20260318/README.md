# 2441. Largest Positive Integer That Exists With Its Negative

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
  public int findMaxK(int[] nums) {
    int result = -1;
    for (int n: nums) {
      if (n > result && containNum(nums, -n)) result = n;
    }

    return result;
  }

  private boolean containNum(int[] nums, int num) {
    for (int n: nums) {
      if (num == n) return true;
    }

    return false;
  }
}
```
