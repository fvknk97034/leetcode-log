# 938. Range Sum of BST

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def range_sum_bst(root, low, high)
  return 0 if root.nil?

  return range_sum_bst(root.right, low, high) if root.val < low
  return range_sum_bst(root.left, low, high) if root.val > high

  result = root.val
  result += range_sum_bst(root.left, low, high)
  result += range_sum_bst(root.right, low, high)

  result
end

```
