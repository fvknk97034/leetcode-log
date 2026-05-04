# 3903. Smallest Stable Index I

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
  public int firstStableIndex(int[] nums, int k) {
    int max = nums[0];
    int[] minNums = new int[nums.length];
    minNums[nums.length - 1] = nums[nums.length - 1];
    for (int i = nums.length - 2; i >= 0; i--) {
      minNums[i] = Math.min(minNums[i + 1], nums[i]);
    }

    for (int i = 0; i < nums.length; i++) {
      max = Math.max(max, nums[i]);

      if (max - minNums[i] <= k)
        return i;
    }

    return -1;
  }
}
```
