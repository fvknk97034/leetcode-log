# 572. Subtree of Another Tree

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```Java
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 * int val;
 * TreeNode left;
 * TreeNode right;
 * TreeNode() {}
 * TreeNode(int val) { this.val = val; }
 * TreeNode(int val, TreeNode left, TreeNode right) {
 * this.val = val;
 * this.left = left;
 * this.right = right;
 * }
 * }
 */
class Solution {
  public boolean isSubtree(TreeNode root, TreeNode subRoot) {
    if (root == null)
      return false;

    return isIdentical(root, subRoot) || isSubtree(root.left, subRoot) || isSubtree(root.right, subRoot);
  }

  private boolean isIdentical(TreeNode node, TreeNode subNode) {
    if (node == null && subNode == null)
      return true;
    if (node == null || subNode == null)
      return false;

    return node.val == subNode.val &&
        isIdentical(node.left, subNode.left) &&
        isIdentical(node.right, subNode.right);
  }
}
```
