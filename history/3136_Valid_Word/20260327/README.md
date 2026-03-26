# 3136. Valid Word

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```Python
class Solution:
    def isValid(self, word: str) -> bool:
        if len(word) < 3:
            return False
        
        vowels = set('aeiouAEIOU')
        has_vowel = False
        has_consonant = False
        for w in word:
            if w.isdigit():
                continue

            if not w.isalpha():
                return False
            
            if w in vowels:
                has_vowel = True
            else:
                has_consonant = True

        return has_vowel and has_consonant
```
