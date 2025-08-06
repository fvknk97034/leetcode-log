# 868. Binary Gap

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
def binary_gap(n)
  binary = n.to_s(2)
  return 0 if binary.count('1') === 1

  before_index, after_index = binary.chars
                                    .map
                                    .with_index { |v, i| v === '1' ? i : nil }
                                    .compact
                                    .each_cons(2)
                                    .max_by { |a, b| b - a }
  after_index - before_index
end
```
