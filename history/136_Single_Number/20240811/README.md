# 136. Single Number

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 要素と出現回数のマップを作成し、最終的に出現回数が1回になっているキーを返却する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```go
func singleNumber(nums []int) int {
    counts := map[int]int{}
    for _, n := range nums {
        counts[n] += 1
    }

    for k, v := range counts {
        if v == 1 {
            return k
        }
    }
    return -1
}
```
