# 2418. Sort the People

## Intuition

-

## Approach
<!-- Describe your approach to solving the problem. -->
1. `names` と `heights` の配列を合わせて、名前を身長の組み合わせの配列を作る
   - ハッシュ化すると重複するキーが削除されるため、配列のまま取り扱う
2. `heights` 降順になるように `sort` してから、名前部分だけ `map` で抜き出す

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {String[]} names
# @param {Integer[]} heights
# @return {String[]}
def sort_people(names, heights)
  data = [names, heights].transpose.sort_by { |value| -value[1] }
  p data.map { |d| d[0] }
end
```
