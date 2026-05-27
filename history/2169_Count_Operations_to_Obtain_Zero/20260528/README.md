# 2169. Count Operations to Obtain Zero

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
  public int countOperations(int num1, int num2) {
    int count = 0;
    while (num1 != 0 && num2 != 0) {
      count++;
      if (num1 >= num2) {
        num1 -= num2;
        continue;
      }

      num2 -= num1;
    }

    return count;
  }
}
```
