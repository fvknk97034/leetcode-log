# 993. Cousins in Binary Tree

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
*     int val;
*     TreeNode left;
*     TreeNode right;
*     TreeNode() {}
*     TreeNode(int val) { this.val = val; }
*     TreeNode(int val, TreeNode left, TreeNode right) {
*         this.val = val;
*         this.left = left;
*         this.right = right;
*     }
* }
*/
class Solution {
  public boolean isCousins(TreeNode root, int x, int y) {
    return level(root, x, 1) == level(root, y, 1) && !isSibling(root, x, y);
  }

  private int level(TreeNode node, int target, int level) {
    if (node == null) return 0;
    if (node.val == target) return level;

    int result = level(node.left, target, level + 1);
    if (result != 0) return result;

    result = level(node.right, target, level + 1);
    return result;
  }

  private boolean isSibling(TreeNode node, int x, int y) {
    if (node == null) return false;
    if (node.left == null || node.right == null) return isSibling(node.left, x, y) || isSibling(node.right, x, y);

    if (node.left.val == x && node.right.val == y) return true;

    if (node.left.val == y && node.right.val == x) return true;

    return isSibling(node.left, x, y) || isSibling(node.right, x, y);
  }
}
```
