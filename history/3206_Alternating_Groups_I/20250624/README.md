# 3206. Alternating Groups I

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
# @param {Integer[]} colors
# @return {Integer}
def number_of_alternating_groups(colors)
  colors.concat(colors[0, 2]).each_cons(3).count do |c1, c2, c3|
    next false if c1 === c2

    c1 === c3
  end
end
```
