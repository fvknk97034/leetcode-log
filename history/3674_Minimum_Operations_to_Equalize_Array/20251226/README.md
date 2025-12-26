# 3674. Minimum Operations to Equalize Array

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
  public int minOperations(int[] nums) {
    int firstNum = nums[0];
    for (int i = 1; i < nums.length; i++) {
      if (nums[i] != firstNum) return 1;
    }

    return 0;
  }
}
```
