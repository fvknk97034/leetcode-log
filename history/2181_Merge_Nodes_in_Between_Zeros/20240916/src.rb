# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def merge_nodes(head)
  current_node = head.next

  while
    current_node.val += current_node.next.val

    if current_node.next.next.nil?
      current_node.next = nil
      break
    end

    if current_node.next.val == 0
      current_node.next = current_node.next.next
      current_node = current_node.next
      next
    end

    current_node.next = current_node.next.next
  end

  head.next
end
