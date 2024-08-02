# 263. Ugly Number

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 指定の数で余りが出ない範囲で割り続け、割れなくなったら結果が1かどうかを判定する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {Integer} n
# @return {Boolean}
def is_ugly(n)
  return false if n < 1

  prime_factors = [5, 3, 2]

  prime_factors.each do |p|
    while(n >= p && n % p == 0) do
      n /= p
    end
  end

  n == 1
end
```
