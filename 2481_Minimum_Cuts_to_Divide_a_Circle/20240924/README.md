# 2481. Minimum Cuts to Divide a Circle

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
def number_of_cuts(n)
  return 0 if n == 1

  n % 2 == 0 ? n / 2 : n
end
```
