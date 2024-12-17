# 145. Binary Tree Postorder Traversal

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```go
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
}```
