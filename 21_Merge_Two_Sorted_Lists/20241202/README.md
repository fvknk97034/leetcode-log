# 21. Merge Two Sorted Lists

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
#   attr_accessor :val, :next
#   def initialize(val = 0, _next = nil)
#     @val = val
#     @next = _next
#   end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  return list2 if list1.nil?
  return list1 if list2.nil?

  list1, list2 = [list2, list1] if list1.val > list2.val
  node1, node2 = [list1, list2]

  while !node1.nil? && !node2.nil?
    if node1.next.nil?
      node1.next = node2
      break
    end

    next if node1.val > node2.val

    if node1.next.val >= node2.val
      tmp = node2.next

      node2.next = node1.next
      node1.next = node2
      node1 = node1.next

      node2 = tmp
      next
    end

    node1 = node1.next
  end
  list1
end
```
