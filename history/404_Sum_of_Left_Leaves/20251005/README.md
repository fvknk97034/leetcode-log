# 404. Sum of Left Leaves

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
def sum_of_left_leaves(root)
  return 0 if root.nil?

  left = root.left
  left_sum = if left&.left.nil? && left&.right.nil?
               left&.val || 0
             else
               sum_of_left_leaves(left)
             end
  left_sum + sum_of_left_leaves(root.right)
end

```
