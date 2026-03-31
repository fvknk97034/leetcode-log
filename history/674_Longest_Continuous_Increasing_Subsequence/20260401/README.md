# 674. Longest Continuous Increasing Subsequence

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
  public int findLengthOfLCIS(int[] nums) {
    int result = 1;
    int len = 1;
    for (int i = 1; i < nums.length; i++) {
      if (nums[i] > nums[i - 1]) {
        len++;
        continue;
      }

      if (len > result) result = len;

      len = 1;
    }

    return result > len ? result : len;
  }
}
```
