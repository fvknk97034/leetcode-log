# 2806. Account Balance After Rounded Purchase

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
    def accountBalanceAfterPurchase(self, purchaseAmount: int) -> int:
        roundedAmount = ceil(purchaseAmount / 10) * 10 if purchaseAmount % 10 >= 5 else floor(purchaseAmount / 10) * 10
        return 100 - roundedAmount
```
