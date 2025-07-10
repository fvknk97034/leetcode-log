# 1925. Count Square Sum Triples

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {Integer} n
# @return {Integer}
def count_triples(n)
  nums = (1..n).map { |v| v ** 2 }
  num = nums.combination(2).count do |a, b|
    sum = a + b
    sqrt = Integer.sqrt(sum)

    next false if sqrt > n
    next false unless sqrt == Math.sqrt(sum)

    nums.any? { |c| sum === c }
  end

  num * 2
end
```
