# 3908. Valid Digit Number

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
  public boolean validDigit(int n, int x) {
    boolean hasX = false;
    while (n >= 10) {
      if (n % 10 == x)
        hasX = true;
      
      n /= 10;
    }

    return hasX && n != x;
  }
}
```
