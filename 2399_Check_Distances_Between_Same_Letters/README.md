# 2399. Check Distances Between Same Letters

## Intuition

- アルファベットの順番が必要なので、あらかじめ配列に格納しておく
- 同じ文字列は必ず2つなので、`index`と`rindex`で検索して差分を取る

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {String} s
# @param {Integer[]} distance
# @return {Boolean}
def check_distances(s, distance)
  alphabets = ('a'..'z').to_a

  s.each_char do |a|
    return false unless distance[alphabets.index(a)] == s.rindex(a) - s.index(a) - 1
  end
  true
end
```
