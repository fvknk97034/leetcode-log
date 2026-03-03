# 3079. Find the Sum of Encrypted Integers

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
  public int sumOfEncryptedInt(int[] nums) {
    int result = 0;
    for (int n: nums) {
      result += encrypt(n);
    }

    return result;
  }

  private int encrypt(int n) {
    int digit = -1;
    int max = 0;
    while (n > 0) {
      max = Math.max(n % 10, max);
      n /= 10;
      digit++;
    }

    int result = 0;
    while (digit >= 0) {
      result += max * Math.pow(10, digit);
      digit--;
    }

    return result;
  }
}
```
