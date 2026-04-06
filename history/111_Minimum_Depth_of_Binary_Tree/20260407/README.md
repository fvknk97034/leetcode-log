# 111. Minimum Depth of Binary Tree

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
  public int minDepth(TreeNode root) {
    if (root == null) return 0;

    return traversalMinDepth(root, 1, Integer.MAX_VALUE);
  }

  public int traversalMinDepth(TreeNode node, int current, int result) {
    if (current >= result) return result;
    if (node.left == null && node.right == null) return current;

    if (node.left != null) result = traversalMinDepth(node.left, current + 1, result);
    if (node.right != null) result = traversalMinDepth(node.right, current + 1, result);

    return result;
  }
}
```
