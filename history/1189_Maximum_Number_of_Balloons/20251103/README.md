# 1189. Maximum Number of Balloons

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
# @param {String} text
# @return {Integer}
def max_number_of_balloons(text)
  counts = text.chars.tally
  needs = {
    a: 1,
    b: 1,
    l: 2,
    n: 1,
    o: 2
  }.transform_keys(&:to_s)

  needs.inject(10000 / 7) do |result, count|
    k, v = count
    return 0 if counts[k].nil?

    result = [result, counts[k] / v].min
  end
end
```
