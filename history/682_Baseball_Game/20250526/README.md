# 682. Baseball Game

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
# @param {String[]} operations
# @return {Integer}
def cal_points(operations)
  records = []
  operations.each do |o|
    next records << records[-2..-1].sum if o === '+'
    next records << records[-1] * 2 if o === 'D'
    next records.pop if o === 'C'

    records << o.to_i
  end

  records.sum
end
```
