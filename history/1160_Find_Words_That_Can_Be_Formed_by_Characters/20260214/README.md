# 1160. Find Words That Can Be Formed by Characters

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
  public int countCharacters(String[] words, String chars) {
    int result = 0;

    int[] charCounts = countCharInWord(chars);
    for (String word: words) {
      if (isRequired(word, charCounts)) result += word.length();
    }
    return result;
  }

  private boolean isRequired(String word, int[] charCounts) {
    int[] wordCounts = countCharInWord(word);
    for (int i = 0; i < wordCounts.length; i++) {
      if (wordCounts[i] > charCounts[i]) return false;
    }

    return true;
  }

  private int[] countCharInWord(String word) {
    int[] counts = new int[26];
    for (char c: word.toCharArray()) {
      counts[c - 'a']++;
    }

    return counts;
  }
}
```
