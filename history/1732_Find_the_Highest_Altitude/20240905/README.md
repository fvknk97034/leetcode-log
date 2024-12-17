# 1732. Find the Highest Altitude

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
# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
  result = 0
  altitude = 0
  gain.each do |g|
    altitude += g
    result = altitude if result < altitude
  end
  result
end
```
