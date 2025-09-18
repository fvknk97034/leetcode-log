# 1496. Path Crossing

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
# @param {String} path
# @return {Boolean}
def is_path_crossing(path)
  directions = {
    N: 1,
    E: 0,
    S: 1,
    W: 0
  }
  moves = {
    N: 1,
    E: 1,
    S: -1,
    W: -1
  }

  last_point = [0, 0]
  points = Set.new()
  points << last_point
  path.each_char do |p|
    next_point = last_point.map { _1 }
    next_point[directions[p.to_sym]] += moves[p.to_sym]

    return true if points.include?(next_point)

    points << next_point
    last_point = next_point
  end
  false
end
```
