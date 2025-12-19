# 530. Minimum Absolute Difference in BST

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```python
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def getValues(self, node: Optional[TreeNode], results: [int]):
        if not node:
            return

        self.getValues(node.left, results)
        results.append(node.val)
        self.getValues(node.right, results)

        return results

    def getMinimumDifference(self, root: Optional[TreeNode]) -> int:
        values = self.getValues(root, [])

        result = 100000
        for i in range(1, len(values)):
            result = min(values[i] - values[i - 1], result)

        return result
```
