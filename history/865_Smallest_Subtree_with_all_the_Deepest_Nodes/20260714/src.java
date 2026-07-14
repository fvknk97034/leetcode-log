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
  int maxDepth = 0;
  TreeNode result;

  public TreeNode subtreeWithAllDeepest(TreeNode root) {
    dfs(root, 0);
    return result;
  }

  private int dfs(TreeNode root, int depth) {
    if (root == null)
      return depth;

    maxDepth = Math.max(depth, maxDepth);

    int leftDepth = dfs(root.left, depth + 1);
    int rightDepth = dfs(root.right, depth + 1);
    if (leftDepth == rightDepth && leftDepth > maxDepth)
      result = root;

    return Math.max(leftDepth, rightDepth);
  }
}
