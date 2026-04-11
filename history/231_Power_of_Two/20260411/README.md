# 231. Power of Two

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
  public boolean isPowerOfTwo(int n) {
    if (n == 0) return false;

    return n == 1 || n % 2 == 0 && isPowerOfTwo(n / 2);
  }
}
```
