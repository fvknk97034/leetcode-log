# 3783. Mirror Distance of an Integer

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
  public int mirrorDistance(int n) {
    return Math.abs(n - reverseNum(n));
  }

  private int reverseNum(int n) {
    int result = 0;
    while (n > 0) {
      result = result * 10 + n % 10;
      n /= 10;
    }

    return result;
  }
}
```
