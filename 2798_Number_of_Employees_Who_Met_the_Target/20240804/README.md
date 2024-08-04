# 2798. Number of Employees Who Met the Target

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 降順にソートして、指定時間より少ない要素にあたったらカウントを終了する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```go
func numberOfEmployeesWhoMetTarget(hours []int, target int) int {
    sort.Slice(hours, func(i, j int) bool { return hours[i] > hours[j] })
    count := 0
    for _, h := range hours {
        if h < target {
            break
        }
        count++
    }
    return count
}
```
