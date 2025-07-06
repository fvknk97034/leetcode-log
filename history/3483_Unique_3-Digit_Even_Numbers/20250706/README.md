# 3483. Unique 3-Digit Even Numbers

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
# @param {Integer[]} digits
# @return {Integer}
def total_numbers(digits)
  evens = digits.filter(&:even?)
  evens.flat_map do |e|
    i = digits.index(e)
    other_nums = digits[...i].concat(digits[(i + 1)..])
    other_nums.permutation(2)
              .reject { |p| p[0] === 0 }
              .map { |p| p << e }
  end.uniq.count
end
```
