# 1780. Check if Number is a Sum of Powers of Three

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
  public boolean checkPowersOfThree(int n) {
    while (n != 0) {
      if (n % 3 == 2)
        return false;

      n /= 3;
    }

    return true;
  }
}
```
