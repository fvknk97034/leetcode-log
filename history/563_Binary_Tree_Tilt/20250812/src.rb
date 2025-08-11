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
# @return {Integer}
def find_tilt(root)
  traversal(root)[1]
end

def traversal(node)
  return [0, 0] if node.nil?

  left_sum, left_diff = traversal(node.left)
  right_sum, right_diff = traversal(node.right)

  sum = node.val + left_sum + right_sum
  diff = (left_sum - right_sum).abs + left_diff + right_diff

  [sum, diff]
end
