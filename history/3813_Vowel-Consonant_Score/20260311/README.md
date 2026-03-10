# 3813. Vowel-Consonant Score

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
    def vowelConsonantScore(self, s: str) -> int:
        vowels = ['a', 'e', 'i', 'o', 'u']
        v, c = 0, 0
        for char in s:
            if not char.isalpha():
                continue

            if char in vowels:
                v += 1
                continue
            
            c += 1
            
        return 0 if c == 0 else math.floor(v / c) 
```
