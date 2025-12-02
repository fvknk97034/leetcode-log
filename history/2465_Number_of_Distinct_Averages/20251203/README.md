# 2465. Number of Distinct Averages

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
function distinctAverages(nums: number[]): number {
  if (nums.length == 0)
    return 0

  const uniqueAverages: number[] = []
  let sortedNums = nums.sort((a, b) => a - b)
  while (sortedNums.length != 0) {
    const max: number = sortedNums[sortedNums.length - 1]
    const min: number = sortedNums[0]

    const average: number = (max + min) / 2
    if (!uniqueAverages.includes(average))
      uniqueAverages.push(average)

    sortedNums = sortedNums.slice(1, -1)
  }

  return uniqueAverages.length
}
```
