# 520. Detect Capital

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
    def detectCapitalUse(self, word: str) -> bool:
        return word == word.upper() or word[1:] == word[1:].lower()
```
