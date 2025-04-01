# 617. Merge Two Binary Trees

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
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {TreeNode}
def merge_trees(root1, root2)
  return if root1.nil? && root2.nil?

  tree = TreeNode.new((root1&.val || 0) + (root2&.val || 0))

  tree.left = merge_trees(root1&.left, root2&.left)
  tree.right = merge_trees(root1&.right, root2&.right)

  tree
end
```
