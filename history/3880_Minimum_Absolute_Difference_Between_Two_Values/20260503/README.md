# 3880. Minimum Absolute Difference Between Two Values

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
  public int minAbsoluteDifference(int[] nums) {
    int result = 101;
    int i = -1;
    int j = -1;
    for (int index = 0; index < nums.length; index++) {
      switch (nums[index]) {
        case 1:
          i = index;
          break;
        case 2:
          j = index;
          break;
        default:
          continue;
      }

      if (i == -1 || j == -1)
        continue;

      result = Math.min(result, Math.abs(i - j));
    }

    return result == 101 ? -1 : result;
  }
}
```
