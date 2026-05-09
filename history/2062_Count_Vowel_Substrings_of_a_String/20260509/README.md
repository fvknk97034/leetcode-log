# 2062. Count Vowel Substrings of a String

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
  public int countVowelSubstrings(String word) {
    int result = 0;
    for (int i = 0; i <= word.length() - 5; i++) {
      boolean[] showns = new boolean[26];
      int vowelCount = 0;
      for (int j = i; j < word.length(); j++) {
        Character c = word.charAt(j);
        if ("aeiou".indexOf(c) == -1)
          break;

        if (!showns[c - 'a']) {
          showns[c - 'a'] = true;
          vowelCount++;
        }

        if (vowelCount == 5)
          result++;
      }
    }
  
    return result;
  }
}
```
