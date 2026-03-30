# 342. Power of Four

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
  public boolean isPowerOfFour(int n) {
    if (n == 0) return false;

    while (n % 4 == 0) {
      n /= 4;
    }

    return n == 1;
  }
}
```
