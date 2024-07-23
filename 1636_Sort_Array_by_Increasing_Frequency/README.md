# 1636. Sort Array by Increasing Frequency

## Intuition

-

## Approach
<!-- Describe your approach to solving the problem. -->

- 使用回数が同値の場合、数値が逆順になるように並べるので、先に数値を逆順に並べる
- 数値のソートが終わったら、数値の使用回数をもとに並び替えを行う

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {Integer[]} nums
# @return {Integer[]}
def frequency_sort(nums)
  sorted_array = nums.sort.reverse.sort do |a, b|
    nums.count(a) <=> nums.count(b)
  end
end
```
