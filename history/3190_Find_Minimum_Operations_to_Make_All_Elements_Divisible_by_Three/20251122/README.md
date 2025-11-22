# 3190. Find Minimum Operations to Make All Elements Divisible by Three

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
    def minimumOperations(self, nums: List[int]) -> int:
        return sum(1 for n in nums if n % 3 != 0)
```
