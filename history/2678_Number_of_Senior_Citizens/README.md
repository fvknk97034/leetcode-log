# 2678. Number of Senior Citizens

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 指定部分の文字列を抽出し、条件比較して真になったもののみを `count` で数え上げる

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {String[]} details
# @return {Integer}
def count_seniors(details)
  details.count { |p| p.slice(11, 2).to_i > 60 }
end
```
