# 2682. Find the Losers of the Circular Game

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
  public int[] circularGameLosers(int n, int k) {
    int[] receivedCounts = new int[n];
    receivedCounts[0] = 1;
    int loserCount = n - 1;

    int turn = 1;
    int index = 0;
    while (true) {
      index = (index + turn * k) % n;
      receivedCounts[index]++;
      if (receivedCounts[index] == 2)
        break;

      loserCount--;
      turn++;
    }

    int[] results = new int[loserCount];
    index = 0;
    for (int i = 0; i < receivedCounts.length; i++) {
      if (receivedCounts[i] != 0)
        continue;

      results[index] = i + 1;
      index++;
    }

    return results;
  }
}
```
