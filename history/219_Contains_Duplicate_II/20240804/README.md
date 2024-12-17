# 219. Contains Duplicate II

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 数値をキー、数値のインデックスを値とするマップを作成しながら捜査を進める
  - 初登場の数値では `map` の2つ目の返却値は必ず `false` になるため、数値とインデックスを登録して次回以降結果を取れるようにする
  - 2回目以降では `map` の2つ目の返却値は必ず `true` になり、インデックスを返却する
    - 条件を満たさない場合はインデックスを更新するたね、返却するインデックスは常に捜査位置より前かつもっとも近いインデックスを返却するようになる
      - 現在位置と返却されたインデックス `k` より距離が小さければ `true` を返却する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```go
func containsNearbyDuplicate(nums []int, k int) bool {
    nums_map := make(map[int]int)
    
    for i, n := range nums{
        if j, exist := nums_map[n]; i - j <= k && exist {
            return true
        } 
        nums_map[n] = i
    }
    return false
}```
