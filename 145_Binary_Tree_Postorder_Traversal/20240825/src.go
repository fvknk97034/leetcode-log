/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func postorderTraversal(root *TreeNode) []int {
    result := []int{}
    getNodeValueArray(root, &result)
    return result
}

func getNodeValueArray(node *TreeNode, result *[]int) {
    if node != nil {
        getNodeValueArray(node.Left, result)
        getNodeValueArray(node.Right, result)
        *result = append(*result, node.Val)
    }
}
