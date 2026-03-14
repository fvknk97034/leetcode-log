# 3861. Minimum Capacity Box

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
  public int minimumIndex(int[] capacity, int itemSize) {
    int min = 101;
    int result = -1;
    for (int i = 0; i < capacity.length; i++) {
      int c = capacity[i];
      if (itemSize > c) continue;
      if (c >= min) continue;

      if (itemSize == c) return i;

      min = c;
      result = i;
    }

    return result;
  }
}
```
