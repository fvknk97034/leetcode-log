# 2980. Check if Bitwise OR Has Trailing Zeros

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
  public boolean hasTrailingZeros(int[] nums) {
    int lastZeroCount = 0;

    for (int num: nums) {
      if (num % 2 == 1)
        continue;

      lastZeroCount++;
      if (lastZeroCount == 2)
        return true;
    }

    return false;
  }
}
```
