# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  return false if head.nil?

  slow_seeker = head
  fast_seeker = head.next&.next

  until fast_seeker.nil?
    return true if slow_seeker === fast_seeker

    slow_seeker = slow_seeker.next
    fast_seeker = fast_seeker.next&.next
  end

  false
end
