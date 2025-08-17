# 543. Diameter of Binary Tree

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
# @return {Integer}
def diameter_of_binary_tree(root, result = 0)
  return result - 1 if root.nil?
  return diameter_of_binary_tree(root.right, result + 1) if root.left.nil?
  return diameter_of_binary_tree(root.left, result + 1) if root.right.nil?
  
  [depth(root.left) + depth(root.right), diameter_of_binary_tree(root.left, result + 1), diameter_of_binary_tree(root.right, result + 1)].max
end

def depth(node, result = 1)
  return result - 1 if node.nil?

  [depth(node.left, result + 1), depth(node.right, result + 1)].max  
end
```
