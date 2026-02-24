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
