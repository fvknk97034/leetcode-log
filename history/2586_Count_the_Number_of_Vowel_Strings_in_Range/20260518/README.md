# 2586. Count the Number of Vowel Strings in Range

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
  public int vowelStrings(String[] words, int left, int right) {
    int result = 0;
    for (int i = left; i <= right; i++) {
      String word = words[i];
      if (!isVowel(word.charAt(0)) || !isVowel(word.charAt(word.length() - 1)))
        continue;

      result++;
    }
    return result;
  }

  private boolean isVowel(char c) {
    return c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u';
  }
}
```
