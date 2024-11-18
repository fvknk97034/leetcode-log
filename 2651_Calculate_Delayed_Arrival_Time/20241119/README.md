# 2651. Calculate Delayed Arrival Time

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
# @param {Integer} arrival_time
# @param {Integer} delayed_time
# @return {Integer}
def find_delayed_arrival_time(arrival_time, delayed_time)
  (arrival_time + delayed_time) % 24
end
```
