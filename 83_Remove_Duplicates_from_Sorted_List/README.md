# 83. Remove Duplicates from Sorted List

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- `head` が `nil` になるまで読み込みを続ける

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
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  result = []
  while(head) do
    result << head.val if !result.include?(head.val)

    head = head.next
  end
  result
end
```
