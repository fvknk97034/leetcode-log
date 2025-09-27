# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
  startA = headA
  startB = headB
  count = 0
  until headA === headB
    return nil if count >= 3

    headA = headA.next || (count += 1) && startB
    headB = headB.next || (count += 1) && startA
  end

  headA
end
