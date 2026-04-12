# 3028. Ant on the Boundary

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
  public int returnToBoundaryCount(int[] nums) {
    int position = 0;
    int result = 0;
    for (int n : nums) {
      position += n;

      if (position == 0)
        result++;
    }

    return result;
  }
}

```
