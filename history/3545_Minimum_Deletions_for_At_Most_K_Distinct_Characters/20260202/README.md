# 3545. Minimum Deletions for At Most K Distinct Characters

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
  public int minDeletion(String s, int k) {
    if (s.length() <= k) return 0;

    int[] counts = new int[26];
    int uniqueCount = 0;
    for (char c: s.toCharArray()) {
      if (counts[c - 'a'] == 0) uniqueCount++;

      counts[c - 'a']++;
    }
    if (uniqueCount <= k) return 0;

    int[] charCounts = new int[uniqueCount];
    int index = 0;
    for (int count: counts) {
      if (count == 0) continue;

      charCounts[index] = count;
      index++;
    }
    Arrays.sort(charCounts);

    int result = 0;
    for (int i = 0; i < uniqueCount - k; i++) {
      result += charCounts[i];
    }

    return result;
  }
}
```
