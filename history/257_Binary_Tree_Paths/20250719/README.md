# 257. Binary Tree Paths

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
#   attr_accessor :val, :left, :right
#   def initialize(val = 0, left = nil, right = nil)
#     @val = val
#     @left = left
#     @right = right
#   end
# end
# @param {TreeNode} root
# @return {String[]}
def binary_tree_paths(root, path = '', result = [])
  return result << path if root.nil?

  path += "#{path === '' ? '' : '->'}#{root.val}"

  tmp = []
  tmp << binary_tree_paths(root.left, path) if !root.left.nil? || !(root.left.nil? && !root.right.nil?)
  tmp << binary_tree_paths(root.right, path) if !root.right.nil? || !(root.right.nil? && !root.left.nil?)
  tmp.flatten(1).uniq
end
```
