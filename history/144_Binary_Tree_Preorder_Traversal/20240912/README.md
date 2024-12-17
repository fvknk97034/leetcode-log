# 144. Binary Tree Preorder Traversal

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
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}
def preorder_traversal(root)
  result = []
  return result if root == nil

  fetch_child_val(root, result)
  result
end

def fetch_child_val(node, result)
  return if node == nil 

  result << node.val
  fetch_child_val(node.left, result)
  fetch_child_val(node.right, result)
end
```
