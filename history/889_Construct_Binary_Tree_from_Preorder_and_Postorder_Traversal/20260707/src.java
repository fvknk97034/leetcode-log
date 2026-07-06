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
  TreeNode root;
  int[] preorder;
  int[] postorder;

  public TreeNode constructFromPrePost(int[] preorder, int[] postorder) {
    if (preorder.length == 1)
      return new TreeNode(preorder[0]);

    this.preorder = preorder;
    this.postorder = postorder;
    root = build(0, preorder.length, 0, postorder.length);

    return root;
  }

  private TreeNode build(int preStart, int preEnd, int postStart, int postEnd) {
    TreeNode node = new TreeNode(this.preorder[preStart]);
    if (preStart + 1 == this.preorder.length)
      return node;

    int postorderSplittedIndex = findLeftTreeStartIndex(preStart, preEnd, postStart, postEnd);
    if (postorderSplittedIndex == -1)
      return node;

    node.left = null;
    int leftLength = postorderSplittedIndex - postStart + 1;
    int rightLength = postEnd - postorderSplittedIndex - 2;

    if (leftLength != 0) {
      node.left = build(
        preStart + 1,
        preStart + leftLength + 1,
        postStart,
        postorderSplittedIndex + 1
      );
    }

    if (rightLength != 0) {
      node.right = build(
        preStart + leftLength + 1,
        preEnd,
        postorderSplittedIndex + 1,
        postEnd - 1
      );
    }

    return node;
  }

  private int findLeftTreeStartIndex(int preStart, int preEnd, int postStart, int postEnd) {
    for (int i = postStart; i < postEnd; i++) {
      if (this.postorder[i] == this.preorder[preStart + 1])
        return i;
    }
    return -1;
  }
}
