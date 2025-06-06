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
# @return {Integer[][]}
def level_order(root, results = [], level = 0)
  return results if root.nil?

  results[level] ||= []
  results[level] << root.val

  level += 1
  level_order(root.left, results, level)
  level_order(root.right, results, level)

  results
end
