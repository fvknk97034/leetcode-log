# 160. Intersection of Two Linked Lists

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
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
```
