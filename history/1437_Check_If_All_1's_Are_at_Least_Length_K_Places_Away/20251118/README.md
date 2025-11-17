# 1437. Check If All 1's Are at Least Length K Places Away

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```java
class Solution {
  public boolean kLengthApart(int[] nums, int k) {
    int diff = k;
    for (int n : nums) {
      if (n == 0) {
        diff++;
        continue;
      }
      if (diff < k)
        return false;

      diff = 0;
    }
    return true;
  }
}
```
