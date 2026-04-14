# 3222. Find the Winning Player in Coin Game

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
  public String winningPlayer(int x, int y) {
    return Math.min(x, y / 4) % 2 == 0 ? "Bob" : "Alice";
  }
}
```
