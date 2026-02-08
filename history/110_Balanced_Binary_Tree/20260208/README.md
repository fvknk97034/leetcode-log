# 110. Balanced Binary Tree

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```Python
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def isBalanced(self, root: Optional[TreeNode]) -> bool:
        if root == None:
            return True

        left_depth = self.maxDepth(root.left)
        right_depth = self.maxDepth(root.right)

        return (left_depth == right_depth or left_depth + 1 == right_depth or left_depth == right_depth + 1) and self.isBalanced(root.left) and self.isBalanced(root.right)
    
    def maxDepth(self, node: Optional[TreeNode], result = 0):
        if node == None:
            return result

        result += 1
        return max(self.maxDepth(node.left, result), self.maxDepth(node.right, result))
```
