# 3745. Maximize Expression of Three Elements

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
  public int maximizeExpressionOfThree(int[] nums) {
    Arrays.sort(nums);
    return nums[nums.length - 1] + nums[nums.length - 2] - nums[0];
  }
}
```
