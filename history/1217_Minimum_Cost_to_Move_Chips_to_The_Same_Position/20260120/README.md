# 1217. Minimum Cost to Move Chips to The Same Position

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
  public int minCostToMoveChips(int[] position) {
    int[] sums = new int[2];
    for (int p: position) sums[p % 2]++;

    return Math.min(sums[0], sums[1]);
  }
}
```
