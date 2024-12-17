# 23. Merge k Sorted Lists

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
# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  return if lists.nil?

  lists.reject! { _1.nil? }
  return [] if lists.length === 0

  lists.sort_by! { _1.val }
  node = lists[0]

  lists.shift
  results = node

  results_max = end_node(node)
  min = lists[0]

  until node.nil? || min.nil?
    if results_max.val <= min.val
      lists.shift

      node = results_max
      node.next = min
      results_max = end_node(node)

      min = lists[0]
      next
    end

    if !node.next.nil? && node.next.val <= min.val
      node = next_node(node, min)
    #   node = node.next
      next
    end

    lists = delete_first_node_or_nil_list(lists)

    min.next = node.next
    node.next = min
    node = node.next
    results_max = end_node(node)

    min = lists[0]
    break if min.nil?

    node = next_node(node, min)
  end
  results
end

def delete_first_node_or_nil_list(lists)
  if lists[0].next.nil?
    lists.shift
    return lists
  end  
  lists[0] = lists[0].next
  lists.sort_by { _1.val }
end

def end_node(node)
  end_node = node
  until end_node.next.nil?
    end_node = end_node.next
  end
  end_node
end

def next_node(node, target)
  while !node.next.nil? && node.next.val <= target.val
    node = node.next
  end
  node
end
```
