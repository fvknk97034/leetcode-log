# 54. Spiral Matrix

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
# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
  results = []
  operation = :right

  until matrix[0]&.slice(0).nil?
    case operation
      when :right
        results.concat(matrix.shift)
        operation = :down
      when :down
        matrix.each { results << _1.pop }
        operation = :left
      when :left
        results.concat(matrix.pop.reverse)
        operation = :up
      when :up
        matrix.reverse_each { results << _1.shift }
        operation = :right
    end
  end
  results
end
```
