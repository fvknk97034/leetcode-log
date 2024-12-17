# 120. Triangle

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
# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)
  triangle.reverse!
  triangle.each_with_index.each_cons(2) do |v1, v2|
    lowers = v1[0]
    uppers, i = v2
    uppers.each_with_index do |u, j|
      triangle[i][j] = u + lowers[j, 2].min
    end
  end
  triangle[-1][0]
end
```
