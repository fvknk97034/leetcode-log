# 654. Maximum Binary Tree

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
def construct_maximum_binary_tree(nums)
  return if nums === []

  num = nums.max
  index = nums.index(num)
  nums.delete_at(index)

  TreeNode.new(
    num,
    construct_maximum_binary_tree(nums[...index]),
    construct_maximum_binary_tree(nums[index..])
  )
end
```
