# 3379. Transformed Array

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
  public int[] constructTransformedArray(int[] nums) {
    int[] results = new int[nums.length];
    for (int i = 0; i < nums.length; i++) {
      int resultIndex = i + nums[i];
      if (resultIndex >= 0) {
        results[i] = nums[resultIndex % nums.length];
        continue;
      }

      resultIndex = resultIndex % nums.length == 0 ? 0 : resultIndex % nums.length + nums.length;
      results[i] = nums[resultIndex];
    }

    return results;
  }
}
```
