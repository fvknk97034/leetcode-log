# 2506. Count Pairs Of Similar Strings

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
  public int similarPairs(String[] words) {
    int result = 0;
    boolean[][] existences = new boolean[words.length][];
    for (int i = 0; i < words.length; i++)
      existences[i] = charExistence(words[i]);

    for (int i = 0; i < words.length - 1; i++) {
      for (int j = i + 1; j < words.length; j++) {
        if (Arrays.equals(existences[i], existences[j]))
          result++;
      }
    }
    return result;
  }

  private boolean[] charExistence(String word) {
    boolean[] results = new boolean[26];
    for (int i = 0; i < word.length(); i++)
      results[word.charAt(i) - 'a'] = true;
    
    return results;
  }
}
```
