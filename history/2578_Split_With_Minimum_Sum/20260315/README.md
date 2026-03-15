# 2578. Split With Minimum Sum

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
  public int splitNum(int num) {
    char[] digits = String.valueOf(num).toCharArray();
    Arrays.sort(digits);

    int n1 = 0;
    int n2 = 0;
    for(int i = 0; i < digits.length; i++) {
      int n = digits[i] - '0';
      if (i % 2 == 0) {
        n1 = n1 * 10 + n;
        continue;
      }

      n2 = n2 * 10 + n;
    }

    return n1 + n2;
  }
}
```
