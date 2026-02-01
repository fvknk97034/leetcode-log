# 3010. Divide an Array Into Subarrays With Minimum Cost I

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
  public int minimumCost(int[] nums) {
    int[] mins = {50, 50};
    for (int i = 1; i < nums.length; i++) {
      if (nums[i] >= mins[1]) continue;
      if (nums[i] < mins[0]) {
        mins[1] = mins[0];
        mins[0] = nums[i];
        continue;
      }

      mins[1] = nums[i];
    }

    int result = nums[0];
    for (int n: mins) result += n;

    return result;
  }
}
```
