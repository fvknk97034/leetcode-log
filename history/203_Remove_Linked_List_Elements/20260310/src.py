# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def removeElements(self, head: Optional[ListNode], val: int) -> Optional[ListNode]:
        if head == None:
            return head

        node = head
        while node != None and node.val == val:
            node = node.next

        if node == None:
            return node

        result = node
        while node.next != None:
            if node.next.val == val:
                node.next = node.next.next
                continue

            node = node.next

        return result
