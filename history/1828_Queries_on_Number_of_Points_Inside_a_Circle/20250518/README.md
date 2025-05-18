# 1828. Queries on Number of Points Inside a Circle

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
# @param {Integer[][]} points
# @param {Integer[][]} queries
# @return {Integer[]}
def count_points(points, queries)
  queries.map do |cx, cy, r|
    points.count do |px, py|
      Math.sqrt((cx - px) ** 2 + (cy - py) ** 2) <= r
    end
  end
end
```
