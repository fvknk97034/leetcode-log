# 108. Convert Sorted Array to Binary Search Tree

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
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums, tree = nil)
  val = nums.delete_at(nums.length / 2)
  tree = TreeNode.new(val)

  return tree if nums.length === 0

  left_nums = nums.filter { |n| n <= val }
  right_nums = nums - left_nums

  tree.left = sorted_array_to_bst(left_nums, tree.left) unless left_nums.length === 0
  tree.right = sorted_array_to_bst(right_nums, tree.right) unless right_nums.length === 0

  tree
end
```
