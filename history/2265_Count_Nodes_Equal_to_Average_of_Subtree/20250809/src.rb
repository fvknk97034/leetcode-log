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
def average_of_subtree(root)
  @result = 0
  traversal(root)

  @result
end

def traversal(node)
  return [0, 0] if node.nil?

  left_sum, left_count = traversal(node.left)
  right_sum, right_count = traversal(node.right)

  sum = left_sum + right_sum + node.val
  count = left_count + right_count + 1
  @result += 1 if sum / count === node.val

  [sum, count]
end
