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
  public int findSecondMinimumValue(TreeNode root) {
    if (root.left == null && root.right == null)
      return -1;

    return dfs(root, root.val, -1);
  }

  private int dfs(TreeNode root, int min, int result) {
    if (root == null)
      return result;

    if (root.val != min && (result == -1 || root.val < result))
      result = root.val;

    int left = dfs(root.left, min, result);
    if (left != min && (result == -1 || left < result))
      result = left;

    int right = dfs(root.right, min, result);
    if (right != min && (result == -1 || right < result))
      result = right;

    return result;
  }
}
