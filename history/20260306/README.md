# 2475. Number of Unequal Triplets in Array

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
  public int unequalTriplets(int[] nums) {
    int result = 0;
    for (int i = 0; i < nums.length - 2; i++) {
      for (int j = i + 1; j < nums.length - 1; j++) {
        if (nums[i] == nums[j]) continue;

        for (int k = j + 1; k < nums.length; k++) {
          if (nums[i] == nums[k]) continue;
          if (nums[j] == nums[k]) continue;

          result++;
        }
      }
    }

    return result;
  }
}
```
