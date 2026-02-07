# 1653. Minimum Deletions to Make String Balanced

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
    def minimumDeletions(self, s: str) -> int:
        count = s[0:].count("a")
        result = count
        for c in s:
            if c == "b":
                count += 1
                continue

            count -= 1
            if count >= result:
                continue

            result = count

        return result

```
