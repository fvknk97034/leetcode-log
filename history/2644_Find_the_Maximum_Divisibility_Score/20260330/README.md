# 2644. Find the Maximum Divisibility Score

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
  public int maxDivScore(int[] nums, int[] divisors) {
    Arrays.sort(divisors);

    int result = -1;
    int maxCount = -1;
    for (int i = 0; i < divisors.length; i++) {
      if (
        result != -1 &&
        divisors[i] % result == 0 &&
        divisors[i] > result
      ) break;

      int count = 0;
      for (int num: nums) {
        if (num % divisors[i] == 0) count++;
      }

      if (count < maxCount) continue;
      if (count == maxCount && divisors[i] > result) continue;

      result = divisors[i];
      maxCount = count;
    }

    return result;
  }
}
```
