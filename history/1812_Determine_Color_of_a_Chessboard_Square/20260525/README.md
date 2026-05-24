# 1812. Determine Color of a Chessboard Square

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
  public boolean squareIsWhite(String coordinates) {
    return (coordinates.charAt(0) - 'a') % 2 != (coordinates.charAt(1) - '1') % 2;
  }
}
```
