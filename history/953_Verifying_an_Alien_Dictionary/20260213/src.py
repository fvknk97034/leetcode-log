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
