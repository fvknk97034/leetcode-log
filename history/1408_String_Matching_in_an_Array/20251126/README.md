# 1408. String Matching in an Array

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```py
class Solution:
    def stringMatching(self, words: List[str]) -> List[str]:
        results = []
        for word1 in words:
            for word2 in words:
                if word1 == word2:
                    continue
                
                if word1 in word2:
                    results.append(word1)
                    break
        
        return results
```
