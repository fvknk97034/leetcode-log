# 386. Lexicographical Numbers

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
# @return {Integer[]}
def lexical_order(n)
  ('1'..n.to_s).sort.map!(&:to_i)
end
```
