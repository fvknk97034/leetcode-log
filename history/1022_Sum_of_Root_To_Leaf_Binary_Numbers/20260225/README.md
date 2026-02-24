# 1022. Sum of Root To Leaf Binary Numbers

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
    def sumRootToLeaf(self, root: Optional[TreeNode]) -> int:
        return reduce(lambda result, p: result + int(p, 2), self.path(root, '', []), 0)
        
    def path(self, node: Optional[TreeNode], current: str = '', results: [str] = []) -> [str]:
        if node == None:
            return results

        current += str(node.val)
        if node.left == None and node.right == None:
            results.append(current)
            return results

        self.path(node.left, current, results)
        self.path(node.right, current, results)

        return results
```
