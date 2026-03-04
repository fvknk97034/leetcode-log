# 2460. Apply Operations to an Array

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
  public int[] applyOperations(int[] nums) {
    for (int i = 1; i < nums.length; i++) {
      if (nums[i - 1] != nums[i]) continue;

      nums[i - 1] *= 2;
      nums[i] = 0;
    }

    int[] results = new int[nums.length];
    int resultIndex = 0;
    for (int n: nums) {
      if (n == 0) continue;

      results[resultIndex] = n;
      resultIndex++;
    }

    return results;
  }
}
```
