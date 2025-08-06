# 3477. Fruits Into Baskets II

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
# @param {Integer[]} fruits
# @param {Integer[]} baskets
# @return {Integer}
def num_of_unplaced_fruits(fruits, baskets)
  fruits.count do |f|
    i = baskets.index { |b| b >= f }
    baskets[i] = 0 unless i.nil?

    i.nil?
  end
end
```
