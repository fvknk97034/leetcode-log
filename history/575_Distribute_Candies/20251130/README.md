# 575. Distribute Candies

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
function distributeCandies(candyType: number[]): number {
  const sum: number = candyType.length / 2
  const candySet: Set<number> = new Set(candyType)

  return sum < candySet.size ? sum : candySet.size
}
```
