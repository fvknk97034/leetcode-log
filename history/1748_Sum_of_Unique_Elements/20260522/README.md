# 1748. Sum of Unique Elements

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
  public int sumOfUnique(int[] nums) {
    int[] numCounts = new int[101];
    for (int n: nums) {
      numCounts[n]++;
    }

    int result = 0;
    for (int i = 1; i < 101; i++) {
      if (numCounts[i] == 1)
        result += i;
    }

    return result;      
  }
}
```
