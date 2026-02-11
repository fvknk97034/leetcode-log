class Solution:
    def accountBalanceAfterPurchase(self, purchaseAmount: int) -> int:
        roundedAmount = ceil(purchaseAmount / 10) * 10 if purchaseAmount % 10 >= 5 else floor(purchaseAmount / 10) * 10
        return 100 - roundedAmount
