# 2154. Keep Multiplying Found Values by Two

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```java
class Solution {
  public int findFinalValue(int[] nums, int original) {
    int result = original;
    while (containsValue(nums, result)) {
      result *= 2;
    }

    return result;
  }

  private boolean containsValue(int[] nums, int target) {
    for (int n : nums) {
      if (n == target)
        return true;
    }
    return false;
  }
}
```
