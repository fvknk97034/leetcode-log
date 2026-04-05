# 3038. Maximum Number of Operations With the Same Score I

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
  public int maxOperations(int[] nums) {
    int target = nums[0] + nums[1];
    for (int i = 3; i < nums.length; i += 2) {
      int score = nums[i - 1] + nums[i];

      if (score != target) return i / 2;
    }

    return nums.length / 2;
  }
}
```
