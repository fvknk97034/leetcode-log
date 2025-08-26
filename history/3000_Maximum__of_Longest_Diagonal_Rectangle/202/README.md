# 3000. Maximum Area of Longest Diagonal Rectangle

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
# @param {Integer[][]} dimensions
# @return {Integer}
def area_of_max_diagonal(dimensions)
  a, b = dimensions.max_by { |a, b| [a ** 2 + b ** 2, a * b] }
  a * b
end
```
