# 2293. Min Max Game

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 先頭から2つずつで適用するメソッドが変わるため、4の倍数、4のの倍数 - 2のインデックスを持つ位置で処理を行う
- 引数の個数が1になれば再帰呼び出しを終了する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {Integer[]} nums
# @return {Integer}
def min_max_game(nums)
  return nums[0] if nums.length == 1

  new_nums = []
  nums.length.times do |i|
    if i % 4 == 0
      new_nums << nums[i, 2].min
      next
    end
    
    new_nums << nums[i, 2].max if i % 4 == 2
  end

  min_max_game(new_nums)
end
```
