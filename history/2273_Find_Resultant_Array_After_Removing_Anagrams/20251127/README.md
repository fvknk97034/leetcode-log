# 2273. Find Resultant Array After Removing Anagrams

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```python
class Solution:
    def removeAnagrams(self, words: List[str]) -> List[str]:
        i = 1
        while i < len(words):
            if sorted(words[i]) == sorted(words[i - 1]):
                del words[i]
                continue

            i += 1

        return words
```
