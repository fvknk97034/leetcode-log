# 1791. Find Center of Star Graph

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 各無向グラフの組の配列には2つのノードが入っており、中央のノードは複数の組に属していることから、2つの組の積集合をとった結果を返却する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```rb
# @param {Integer[][]} edges
# @return {Integer}
def find_center(edges)
  (edges[0] & edges[1]).first
end
```
