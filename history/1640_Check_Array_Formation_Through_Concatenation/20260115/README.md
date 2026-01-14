# 1640. Check Array Formation Through Concatenation

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
    def canFormArray(self, arr: List[int], pieces: List[List[int]]) -> bool:
        for p in pieces:
            l = len(p)
            isIncluded = False
            for i in range(len(arr) - l + 1):
                if p != arr[i:i + l]:
                    continue

                isIncluded = True
                break

            if not isIncluded:
                return False

        return True
```
