# 3769. Sort Integers by Binary Reflection

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
  def sortByReflection(self, nums: List[int]) -> List[int]:
    results = [[int(bin(n)[2:][::-1], 2), n] for n in nums]
    results.sort()

    return list(map(lambda b: b[1], results))
```
