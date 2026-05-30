# 1641. Count Sorted Vowel Strings

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
  public int countVowelStrings(int n) {
    int[] lastVowelCounts = {1, 1, 1, 1, 1};
    int result = 0;
    while (n != 0) {
      result = lastVowelCounts[0];
      for (int i = 1; i < lastVowelCounts.length; i++) {
        result += lastVowelCounts[i];
        lastVowelCounts[i] = result;
      }

      n--;
    }

    return result;
  }
}
```
