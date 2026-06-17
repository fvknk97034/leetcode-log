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
  private TreeNode result;
  private int resultDepth = -1;

  public TreeNode lcaDeepestLeaves(TreeNode root) {
    nodeDepth(root, 0);
    return result;
  }

  private int nodeDepth(TreeNode root, int depth) {
    if (root == null)
      return depth;

    depth++;
    int left = nodeDepth(root.left, depth);
    int right = nodeDepth(root.right, depth);
    if (left == right && left >= resultDepth) {
      result = root;
      resultDepth = left;
    }
    return Math.max(left, right);
  }
}
