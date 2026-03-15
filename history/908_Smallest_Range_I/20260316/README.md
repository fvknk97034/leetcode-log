# 908. Smallest Range I

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
  public int smallestRangeI(int[] nums, int k) {
    if (nums.length < 2) return 0;

    int min = nums[0];
    int max = nums[0];
    for (int n: nums) {
      if (n < min) min = n;
      else if (n > max) max = n;
    }

    return max - min <= 2 * k ? 0 : max - min - 2 * k;
  }
}
```
