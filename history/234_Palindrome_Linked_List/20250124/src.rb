# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val = 0, _next = nil)
#     @val = val
#     @next = _next
#   end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  node = head
  values = []
  until node.nil?
    values << node.val
    node = node.next
  end

  values == values.reverse
end
