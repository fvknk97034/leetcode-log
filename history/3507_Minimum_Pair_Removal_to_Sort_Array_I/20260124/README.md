# 3507. Minimum Pair Removal to Sort Array I

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
  public int minimumPairRemoval(int[] nums) {
    int result = 0;
    while (!isSorted(nums)) {
      result++;

      int min = nums[0] + nums[1];
      int minIndex = 0;
      for (int i = 1; i < nums.length - 1; i++) {
        int tmp = nums[i] + nums[i + 1];
        if (tmp >= min) continue;

        min = tmp;
        minIndex = i;
      }

      int[] newNums = new int[nums.length - 1];
      for (int i = 0; i < nums.length; i++) {
        if (i == minIndex + 1) continue;
        if (i == minIndex) {
          newNums[i] = min;
          continue;
        }

        if (i > minIndex) {
          newNums[i - 1] = nums[i];
          continue;
        }

        newNums[i] = nums[i];
      }
      nums = newNums;
    }
    return result;
  }

  private boolean isSorted(int[] nums) {
    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] > nums[i + 1]) return false;
    }
    return true;
  }
}
```
