/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func insertGreatestCommonDivisors(head *ListNode) *ListNode {
    prefixNode := head
    suffixNode := head.Next

    for suffixNode != nil {
        commonDivisor := calculateGreatestCommonDivisor(prefixNode.Val, suffixNode.Val)
        newNode := ListNode{ Val: commonDivisor, Next: suffixNode }
        prefixNode.Next = &newNode

        prefixNode = suffixNode
        suffixNode = suffixNode.Next
    }
    return head
}

func calculateGreatestCommonDivisor(val1, val2 int) int {
    min_num := val1
    max_num := val2
    if val1 > val2 {
        min_num = val2
        max_num = val1
    }
    if min_num == 0 {
        return max_num
    }

    return calculateGreatestCommonDivisor(min_num, max_num % min_num)
}
