# 762. Prime Number of Set Bits in Binary Representation

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
  public int countPrimeSetBits(int left, int right) {
    int result = 0;

    for (int n = left; n <= right; n++) {
      int count = Integer.bitCount(n);
      if (isPrime(count)) result++;
    }

    return result;
  }

  private boolean isPrime(int n) {
    if (n <= 1) return false;

    for (int d = 2; d <= Math.sqrt(n); d++) {
      if (n % d == 0) return false;
    }

    return true;
  }
}
```
