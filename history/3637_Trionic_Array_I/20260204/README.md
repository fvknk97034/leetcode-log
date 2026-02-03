# 3637. Trionic Array I

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
  public boolean isTrionic(int[] nums) {
    if (nums[0] >= nums[1]) return false;

    int step = 0;
    for (int i = 1; i < nums.length; i++) {
      if (nums[i - 1] == nums[i]) return false;

      switch(step) {
        case 0:
          if (nums[i - 1] > nums[i]) step++;
          break;
        case 1:
          if (nums[i - 1] < nums[i]) step++;
          break;
        case 2:
          if (nums[i - 1] > nums[i]) return false;
      }
    }

    return step == 2;
  }
}
```
