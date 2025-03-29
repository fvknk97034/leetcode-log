# 39. Combination Sum

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
# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
  results = []

  sums = candidates.map { |c| [c] }
  until sums.all? { |s| s.sum > target }
    result = sums.filter { |s| s.sum === target }
    results.concat(result.map { |r| r.sort }).uniq!
    sums.reject! { |s| s.sum >= target }

    sums = candidates.flat_map { |c| sums.map { |s| s + [c] } }
  end

  results.filter { |s| s.sum === target }
end
```
