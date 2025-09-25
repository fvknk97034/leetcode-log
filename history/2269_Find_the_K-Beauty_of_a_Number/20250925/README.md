# 2269. Find the K-Beauty of a Number

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
# @param {Integer} num
# @param {Integer} k
# @return {Integer}
def divisor_substrings(num, k)
  num.digits.reverse.each_cons(k).count do |c|
    !c.all? { |d| d === 0 } && num % c.join.to_i === 0
  end
end
```
