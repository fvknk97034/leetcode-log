# 1480. Running Sum of 1d Array

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```TypeScript
function runningSum(nums: number[]): number[] {
  let sum: number = 0
  return nums.map(n => sum += n)
}
```
