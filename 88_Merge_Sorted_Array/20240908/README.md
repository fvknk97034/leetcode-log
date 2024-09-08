# 88. Merge Sorted Array

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```go
func merge(nums1 []int, m int, nums2 []int, n int)  {
    nums1 = append(nums1[:m], nums2...)
    sort.Slice(nums1, func(i, j int) bool { return nums1[i] < nums1[j] })
}
```
