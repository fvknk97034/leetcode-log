# 953. Verifying an Alien Dictionary

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
    def isAlienSorted(self, words: List[str], order: str) -> bool:
        before_orders = []
        for word in words:
            orders = []
            for w in word:
                orders.append(order.find(w))

            if before_orders > orders:
                return False
            
            before_orders = orders

        return True
```
