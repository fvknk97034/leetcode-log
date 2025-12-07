# 1523. Count Odd Numbers in an Interval Range

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
  public int countOdds(int low, int high) {
    if (low % 2 == 1 || high % 2 == 1)
      return (high - low) / 2 + 1;

    return (high - low) / 2;
  }
}
```
